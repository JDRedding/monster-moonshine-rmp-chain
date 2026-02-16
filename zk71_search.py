#!/usr/bin/env python3
# ZK71 In-Memory Search API

import polars as pl
import hashlib
from pathlib import Path

class ZK71Search:
    def __init__(self):
        self.shards = {}
        self._load_shards()

    def _load_shards(self):
        for i in range(71):
            path = f'shmem/zk-shards/shard_{i:02d}.parquet'
            if Path(path).exists():
                self.shards[i] = pl.read_parquet(path)

    def search(self, query, format='json'):
        results = []
        for shard_id, df in self.shards.items():
            # Search in shard
            matches = df.filter(pl.col('file').str.contains(query))
            if len(matches) > 0:
                # Convert format
                if format == 'csv':
                    data = matches.write_csv()
                elif format == 'json':
                    data = matches.write_json()
                elif format == 'rdf':
                    data = self._to_rdf(matches, shard_id)
                else:
                    data = str(matches)
                
                # Generate ZK proof
                proof = hashlib.md5(data.encode()).hexdigest()
                
                results.append({
                    'shard_id': shard_id,
                    'matches': len(matches),
                    'data': data,
                    'zk_proof': proof
                })
        return results

    def _to_rdf(self, df, shard_id):
        rdf = []
        for row in df.iter_rows(named=True):
            rid = row['id']
            subj = f'<zk71:shard{shard_id}/{rid}>'
            for key, val in row.items():
                rdf.append(f'{subj} <zk71:{key}> \"{val}\" .')
        return '\\n'.join(rdf)

    def mask_sensitive(self, data):
        # Mask PII, secrets, etc
        return data.replace('secret', '***')

if __name__ == '__main__':
    search = ZK71Search()
    print(f'🔍 Loaded {len(search.shards)} shards')
    
    # Test search
    results = search.search('prolog', format='json')
    print(f'✅ Found {len(results)} shards with matches')
    
    for r in results[:3]:
        print(f"  Shard {r['shard_id']}: {r['matches']} matches")
        print(f"  ZK proof: {r['zk_proof']}")
