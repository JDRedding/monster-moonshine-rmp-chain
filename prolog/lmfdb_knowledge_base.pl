% LMFDB Knowledge Base - Auto-generated
% Generated: 2026-01-30 21:13:09.033943559 -05:00
%
% Predicates:
%   lmfdb_file(Path, Type, Zone)
%   lmfdb_object(ID, Type, Properties)
%   lmfdb_property(ObjectID, Key, Value)
%   lmfdb_prime(ObjectID, Prime)
%   lmfdb_zone(Zone, Count)

:- module(lmfdb_kb, [
    lmfdb_file/3,
    lmfdb_object/3,
    lmfdb_property/3,
    lmfdb_prime/2,
    lmfdb_zone/2
]).

% Monster primes
monster_prime(2).
monster_prime(3).
monster_prime(5).
monster_prime(7).
monster_prime(11).
monster_prime(13).
monster_prime(17).
monster_prime(19).
monster_prime(23).
monster_prime(29).
monster_prime(31).
monster_prime(41).
monster_prime(47).
monster_prime(59).
monster_prime(71).

% JSON: lmfdb_71_complexity.json
lmfdb_file('/home/mdupont/experiments/monster/temp/ci_artifacts/lmfdb_71_complexity.json', json, 33).
lmfdb_property('lmfdb_71_complexity_json', levels_used, 23).
lmfdb_property('lmfdb_71_complexity_json', total_objects, 41).

% Parquet: lmfdb_reconstructed.parquet
lmfdb_file('/home/mdupont/experiments/monster/temp/ci_artifacts/lmfdb_reconstructed.parquet', parquet, 3).
lmfdb_object('lmfdb_reconstructed_parquet_0', parquet_row, []).
lmfdb_property('lmfdb_reconstructed_parquet_0', shard_id, '0').
lmfdb_property('lmfdb_reconstructed_parquet_0', chunk_id, '33').
lmfdb_property('lmfdb_reconstructed_parquet_0', witness_id, '10').
lmfdb_property('lmfdb_reconstructed_parquet_0', object_id, '"339f8d71"').
lmfdb_property('lmfdb_reconstructed_parquet_0', type, '"eigenvalue"').
lmfdb_property('lmfdb_reconstructed_parquet_0', file, '"lmfdb/modl_galois_representations/main.py"').
lmfdb_property('lmfdb_reconstructed_parquet_0', line, '152').
lmfdb_property('lmfdb_reconstructed_parquet_0', complexity, '50').
lmfdb_property('lmfdb_reconstructed_parquet_0', level, '51').
lmfdb_property('lmfdb_reconstructed_parquet_0', base_complexity, '42').
lmfdb_property('lmfdb_reconstructed_parquet_0', code, '"ProcessedCol("determinant_index", "modlgal.det_surjective", "Det. surjective", lambda a: "&#x2713;" "').
lmfdb_property('lmfdb_reconstructed_parquet_0', proof_hash, '"318d36fd3ebe7503c4140f16bf639ef1e435a4cc59342d26496e0566282c3e6a"').
lmfdb_object('lmfdb_reconstructed_parquet_1', parquet_row, []).
lmfdb_property('lmfdb_reconstructed_parquet_1', shard_id, '0').
lmfdb_property('lmfdb_reconstructed_parquet_1', chunk_id, '44').
lmfdb_property('lmfdb_reconstructed_parquet_1', witness_id, '46').
lmfdb_property('lmfdb_reconstructed_parquet_1', object_id, '"ba854bf5"').
lmfdb_property('lmfdb_reconstructed_parquet_1', type, '"prime"').
lmfdb_property('lmfdb_reconstructed_parquet_1', file, '"lmfdb/belyi/test_belyi.py"').
lmfdb_property('lmfdb_reconstructed_parquet_1', line, '188').
lmfdb_property('lmfdb_reconstructed_parquet_1', complexity, '6').
lmfdb_property('lmfdb_reconstructed_parquet_1', level, '7').
lmfdb_property('lmfdb_reconstructed_parquet_1', base_complexity, '1').
lmfdb_property('lmfdb_reconstructed_parquet_1', code, '""phi := (1/2*x^2+2/5*x+1/200*(nu+5))/(x^5+6/5*x^4+1/50*(7*nu+5)*x^3+1/250*(35*nu-57)*x^2+1/10000*(91"').
lmfdb_property('lmfdb_reconstructed_parquet_1', proof_hash, '"a8a11cc7af8d63e49c91c4e82bdd6294383d457182ebd15365ae1cf8f90baba7"').
lmfdb_object('lmfdb_reconstructed_parquet_2', parquet_row, []).
lmfdb_property('lmfdb_reconstructed_parquet_2', shard_id, '4').
lmfdb_property('lmfdb_reconstructed_parquet_2', chunk_id, '7').
lmfdb_property('lmfdb_reconstructed_parquet_2', witness_id, '10').
lmfdb_property('lmfdb_reconstructed_parquet_2', object_id, '"3d35e123"').
lmfdb_property('lmfdb_reconstructed_parquet_2', type, '"prime"').
lmfdb_property('lmfdb_reconstructed_parquet_2', file, '"lmfdb/abvar/fq/test_browse_page.py"').
lmfdb_property('lmfdb_reconstructed_parquet_2', line, '294').
lmfdb_property('lmfdb_reconstructed_parquet_2', complexity, '7').
lmfdb_property('lmfdb_reconstructed_parquet_2', level, '8').
lmfdb_property('lmfdb_reconstructed_parquet_2', base_complexity, '1').
lmfdb_property('lmfdb_reconstructed_parquet_2', code, '""/Variety/Abelian/Fq/?initial_coefficients=%5B1%2C-1%2C3%2C9%5D&abvar_point_count=%5B75%2C7125%5D","').
lmfdb_property('lmfdb_reconstructed_parquet_2', proof_hash, '"ae73ff07165e522d86c6eb67361a58719da987ccd3697af383358bffebeded47"').
lmfdb_object('lmfdb_reconstructed_parquet_3', parquet_row, []).
lmfdb_property('lmfdb_reconstructed_parquet_3', shard_id, '8').
lmfdb_property('lmfdb_reconstructed_parquet_3', chunk_id, '48').
lmfdb_property('lmfdb_reconstructed_parquet_3', witness_id, '38').
lmfdb_property('lmfdb_reconstructed_parquet_3', object_id, '"46d543fb"').
lmfdb_property('lmfdb_reconstructed_parquet_3', type, '"dimension"').
lmfdb_property('lmfdb_reconstructed_parquet_3', file, '"lmfdb/classical_modular_forms/test_cmf2.py"').
lmfdb_property('lmfdb_reconstructed_parquet_3', line, '393').
lmfdb_property('lmfdb_reconstructed_parquet_3', complexity, '30').
lmfdb_property('lmfdb_reconstructed_parquet_3', level, '31').
lmfdb_property('lmfdb_reconstructed_parquet_3', base_complexity, '21').
lmfdb_property('lmfdb_reconstructed_parquet_3', code, '"large_dimension_page_as_text = self.tc.get(\\'/ModularForm/GL2/Q/holomorphic/671/2/i/a/\\', follow_redir"').
lmfdb_property('lmfdb_reconstructed_parquet_3', proof_hash, '"0e7468d6951586e93aacfd67994e35b2030f043ec3f91df72d138457f4f61d02"').
lmfdb_object('lmfdb_reconstructed_parquet_4', parquet_row, []).
lmfdb_property('lmfdb_reconstructed_parquet_4', shard_id, '10').
lmfdb_property('lmfdb_reconstructed_parquet_4', chunk_id, '4').
lmfdb_property('lmfdb_reconstructed_parquet_4', witness_id, '53').
lmfdb_property('lmfdb_reconstructed_parquet_4', object_id, '"3d3670de"').
lmfdb_property('lmfdb_reconstructed_parquet_4', type, '"prime"').
lmfdb_property('lmfdb_reconstructed_parquet_4', file, '"lmfdb/groups/abstract/main.py"').
lmfdb_property('lmfdb_reconstructed_parquet_4', line, '3674').
lmfdb_property('lmfdb_reconstructed_parquet_4', complexity, '43').
lmfdb_property('lmfdb_reconstructed_parquet_4', level, '44').
lmfdb_property('lmfdb_reconstructed_parquet_4', base_complexity, '1').
lmfdb_property('lmfdb_reconstructed_parquet_4', code, '"ans += f\\'<tr><td><a href="{url_for("galois_groups.by_label", label=rec["label"])}">{rec["label"]}</a"').
lmfdb_property('lmfdb_reconstructed_parquet_4', proof_hash, '"bfe1a6603c939dd5d517eb1b31007251c1ad3912d1c79d90c6d509193d02764e"').
lmfdb_object('lmfdb_reconstructed_parquet_5', parquet_row, []).
lmfdb_property('lmfdb_reconstructed_parquet_5', shard_id, '10').
lmfdb_property('lmfdb_reconstructed_parquet_5', chunk_id, '23').
lmfdb_property('lmfdb_reconstructed_parquet_5', witness_id, '32').
lmfdb_property('lmfdb_reconstructed_parquet_5', object_id, '"999be6a2"').
lmfdb_property('lmfdb_reconstructed_parquet_5', type, '"prime"').
lmfdb_property('lmfdb_reconstructed_parquet_5', file, '"lmfdb/elliptic_curves/test_browse_page.py"').
lmfdb_property('lmfdb_reconstructed_parquet_5', line, '103').
lmfdb_property('lmfdb_reconstructed_parquet_5', complexity, '7').
lmfdb_property('lmfdb_reconstructed_parquet_5', level, '8').
lmfdb_property('lmfdb_reconstructed_parquet_5', base_complexity, '1').
lmfdb_property('lmfdb_reconstructed_parquet_5', code, '"L = self.tc.get("EllipticCurve/Q/?conductor=162&jinv=-1159088625%2F097152")"').
lmfdb_property('lmfdb_reconstructed_parquet_5', proof_hash, '"d30f9d5db0a5fff4bbfd7fb5bf90d1b6b73c3036569e761d52e7d28655944d7b"').
lmfdb_object('lmfdb_reconstructed_parquet_6', parquet_row, []).
lmfdb_property('lmfdb_reconstructed_parquet_6', shard_id, '13').
lmfdb_property('lmfdb_reconstructed_parquet_6', chunk_id, '0').
lmfdb_property('lmfdb_reconstructed_parquet_6', witness_id, '65').
lmfdb_property('lmfdb_reconstructed_parquet_6', object_id, '"5a33dfe8"').
lmfdb_property('lmfdb_reconstructed_parquet_6', type, '"collection"').
lmfdb_property('lmfdb_reconstructed_parquet_6', file, '"lmfdb/utils/completeness.py"').
lmfdb_property('lmfdb_reconstructed_parquet_6', line, '1627').
lmfdb_property('lmfdb_reconstructed_parquet_6', complexity, '23').
lmfdb_property('lmfdb_reconstructed_parquet_6', level, '24').
lmfdb_property('lmfdb_reconstructed_parquet_6', base_complexity, '5').
lmfdb_property('lmfdb_reconstructed_parquet_6', code, '""').
lmfdb_property('lmfdb_reconstructed_parquet_6', proof_hash, '"a33e5be4b55ddc930d33ae8d827436c58240c3f515a05df2baa2a608e4b61f15"').
lmfdb_object('lmfdb_reconstructed_parquet_7', parquet_row, []).
lmfdb_property('lmfdb_reconstructed_parquet_7', shard_id, '13').
lmfdb_property('lmfdb_reconstructed_parquet_7', chunk_id, '45').
lmfdb_property('lmfdb_reconstructed_parquet_7', witness_id, '30').
lmfdb_property('lmfdb_reconstructed_parquet_7', object_id, '"8c5047e4"').
lmfdb_property('lmfdb_reconstructed_parquet_7', type, '"prime"').
lmfdb_property('lmfdb_reconstructed_parquet_7', file, '"lmfdb/groups/abstract/test_browse_page.py"').
lmfdb_property('lmfdb_reconstructed_parquet_7', line, '598').
lmfdb_property('lmfdb_reconstructed_parquet_7', complexity, '12').
lmfdb_property('lmfdb_reconstructed_parquet_7', level, '13').
lmfdb_property('lmfdb_reconstructed_parquet_7', base_complexity, '1').
lmfdb_property('lmfdb_reconstructed_parquet_7', code, '"self.check_args("/Groups/Abstract/Qchar_table/96.71?char_highlight=96.71.6a", "The row representing "').
lmfdb_property('lmfdb_reconstructed_parquet_7', proof_hash, '"67accc7a2ec11fea9d5ea11c679617de60eede336c5f77083f60f8682fc02958"').
lmfdb_object('lmfdb_reconstructed_parquet_8', parquet_row, []).
lmfdb_property('lmfdb_reconstructed_parquet_8', shard_id, '14').
lmfdb_property('lmfdb_reconstructed_parquet_8', chunk_id, '7').
lmfdb_property('lmfdb_reconstructed_parquet_8', witness_id, '69').
lmfdb_property('lmfdb_reconstructed_parquet_8', object_id, '"b0398986"').
lmfdb_property('lmfdb_reconstructed_parquet_8', type, '"collection"').
lmfdb_property('lmfdb_reconstructed_parquet_8', file, '"lmfdb/tests/test_utils.py"').
lmfdb_property('lmfdb_reconstructed_parquet_8', line, '282').
lmfdb_property('lmfdb_reconstructed_parquet_8', complexity, '9').
lmfdb_property('lmfdb_reconstructed_parquet_8', level, '10').
lmfdb_property('lmfdb_reconstructed_parquet_8', base_complexity, '5').
lmfdb_property('lmfdb_reconstructed_parquet_8', code, '""').
lmfdb_property('lmfdb_reconstructed_parquet_8', proof_hash, '"6d5dc5a4792e4dc8724060b81ac4d5bab759e81583a37a52ecd32834b38af562"').
lmfdb_object('lmfdb_reconstructed_parquet_9', parquet_row, []).
lmfdb_property('lmfdb_reconstructed_parquet_9', shard_id, '15').
lmfdb_property('lmfdb_reconstructed_parquet_9', chunk_id, '0').
lmfdb_property('lmfdb_reconstructed_parquet_9', witness_id, '12').
lmfdb_property('lmfdb_reconstructed_parquet_9', object_id, '"2902d433"').
lmfdb_property('lmfdb_reconstructed_parquet_9', type, '"collection"').
lmfdb_property('lmfdb_reconstructed_parquet_9', file, '"lmfdb/utils/completeness.py"').
lmfdb_property('lmfdb_reconstructed_parquet_9', line, '1574').
lmfdb_property('lmfdb_reconstructed_parquet_9', complexity, '22').
lmfdb_property('lmfdb_reconstructed_parquet_9', level, '23').
lmfdb_property('lmfdb_reconstructed_parquet_9', base_complexity, '5').
lmfdb_property('lmfdb_reconstructed_parquet_9', code, '""').
lmfdb_property('lmfdb_reconstructed_parquet_9', proof_hash, '"edbdcf3468230f64ccb13863a94c456cb57e416d467680c91bc366b629b926b0"').
lmfdb_object('lmfdb_reconstructed_parquet_10', parquet_row, []).
lmfdb_property('lmfdb_reconstructed_parquet_10', shard_id, '16').
lmfdb_property('lmfdb_reconstructed_parquet_10', chunk_id, '0').
lmfdb_property('lmfdb_reconstructed_parquet_10', witness_id, '64').
lmfdb_property('lmfdb_reconstructed_parquet_10', object_id, '"83c71ba1"').
lmfdb_property('lmfdb_reconstructed_parquet_10', type, '"collection"').
lmfdb_property('lmfdb_reconstructed_parquet_10', file, '"lmfdb/utils/completeness.py"').
lmfdb_property('lmfdb_reconstructed_parquet_10', line, '1555').
lmfdb_property('lmfdb_reconstructed_parquet_10', complexity, '22').
lmfdb_property('lmfdb_reconstructed_parquet_10', level, '23').
lmfdb_property('lmfdb_reconstructed_parquet_10', base_complexity, '5').
lmfdb_property('lmfdb_reconstructed_parquet_10', code, '""').
lmfdb_property('lmfdb_reconstructed_parquet_10', proof_hash, '"505c4e73b3da2ce85ae1b4a252d887018f7eb974d8309003df915f3694432988"').
lmfdb_object('lmfdb_reconstructed_parquet_11', parquet_row, []).
lmfdb_property('lmfdb_reconstructed_parquet_11', shard_id, '16').
lmfdb_property('lmfdb_reconstructed_parquet_11', chunk_id, '44').
lmfdb_property('lmfdb_reconstructed_parquet_11', witness_id, '52').
lmfdb_property('lmfdb_reconstructed_parquet_11', object_id, '"6bad7b47"').
lmfdb_property('lmfdb_reconstructed_parquet_11', type, '"genus"').
lmfdb_property('lmfdb_reconstructed_parquet_11', file, '"lmfdb/genus2_curves/test_genus2_curves.py"').
lmfdb_property('lmfdb_reconstructed_parquet_11', line, '52').
lmfdb_property('lmfdb_reconstructed_parquet_11', complexity, '27').
lmfdb_property('lmfdb_reconstructed_parquet_11', level, '28').
lmfdb_property('lmfdb_reconstructed_parquet_11', base_complexity, '22').
lmfdb_property('lmfdb_reconstructed_parquet_11', code, '"L = self.tc.get("/Genus2Curve/Q/?g22=1016576&g20=5071050752/9&g21=195344320/9")"').
lmfdb_property('lmfdb_reconstructed_parquet_11', proof_hash, '"b9144ff751c18b978f57f1e92db250bb8c725b2ae17bbfda7efeeb86003c2540"').
lmfdb_object('lmfdb_reconstructed_parquet_12', parquet_row, []).
lmfdb_property('lmfdb_reconstructed_parquet_12', shard_id, '19').
lmfdb_property('lmfdb_reconstructed_parquet_12', chunk_id, '23').
lmfdb_property('lmfdb_reconstructed_parquet_12', witness_id, '32').
lmfdb_property('lmfdb_reconstructed_parquet_12', object_id, '"d95408be"').
lmfdb_property('lmfdb_reconstructed_parquet_12', type, '"conductor"').
lmfdb_property('lmfdb_reconstructed_parquet_12', file, '"lmfdb/elliptic_curves/test_browse_page.py"').
lmfdb_property('lmfdb_reconstructed_parquet_12', line, '103').
lmfdb_property('lmfdb_reconstructed_parquet_12', complexity, '17').
lmfdb_property('lmfdb_reconstructed_parquet_12', level, '18').
lmfdb_property('lmfdb_reconstructed_parquet_12', base_complexity, '11').
lmfdb_property('lmfdb_reconstructed_parquet_12', code, '"L = self.tc.get("EllipticCurve/Q/?conductor=162&jinv=-1159088625%2F097152")"').
lmfdb_property('lmfdb_reconstructed_parquet_12', proof_hash, '"deabb2c4d04d2596b30d29b2f59b91821b1afdea2888021a1d0ef20b6d0f696d"').
lmfdb_object('lmfdb_reconstructed_parquet_13', parquet_row, []).
lmfdb_property('lmfdb_reconstructed_parquet_13', shard_id, '20').
lmfdb_property('lmfdb_reconstructed_parquet_13', chunk_id, '7').
lmfdb_property('lmfdb_reconstructed_parquet_13', witness_id, '14').
lmfdb_property('lmfdb_reconstructed_parquet_13', object_id, '"87d98dfb"').
lmfdb_property('lmfdb_reconstructed_parquet_13', type, '"prime"').
lmfdb_property('lmfdb_reconstructed_parquet_13', file, '"lmfdb/abvar/fq/test_browse_page.py"').
lmfdb_property('lmfdb_reconstructed_parquet_13', line, '298').
lmfdb_property('lmfdb_reconstructed_parquet_13', complexity, '7').
lmfdb_property('lmfdb_reconstructed_parquet_13', level, '8').
lmfdb_property('lmfdb_reconstructed_parquet_13', base_complexity, '1').
lmfdb_property('lmfdb_reconstructed_parquet_13', code, '""/Variety/Abelian/Fq/?initial_coefficients=%5B1%2C-1%2C3%2C9%5D&abvar_point_count=%5B75%2C7125%5D","').
lmfdb_property('lmfdb_reconstructed_parquet_13', proof_hash, '"b7e2ae524552e17b7e457d3129e928a379dfeee4fa42866b459175657c5693d9"').
lmfdb_object('lmfdb_reconstructed_parquet_14', parquet_row, []).
lmfdb_property('lmfdb_reconstructed_parquet_14', shard_id, '22').
lmfdb_property('lmfdb_reconstructed_parquet_14', chunk_id, '0').
lmfdb_property('lmfdb_reconstructed_parquet_14', witness_id, '60').
lmfdb_property('lmfdb_reconstructed_parquet_14', object_id, '"4e912b72"').
lmfdb_property('lmfdb_reconstructed_parquet_14', type, '"collection"').
lmfdb_property('lmfdb_reconstructed_parquet_14', file, '"lmfdb/utils/completeness.py"').
lmfdb_property('lmfdb_reconstructed_parquet_14', line, '1622').
lmfdb_property('lmfdb_reconstructed_parquet_14', complexity, '23').
lmfdb_property('lmfdb_reconstructed_parquet_14', level, '24').
lmfdb_property('lmfdb_reconstructed_parquet_14', base_complexity, '5').
lmfdb_property('lmfdb_reconstructed_parquet_14', code, '""').
lmfdb_property('lmfdb_reconstructed_parquet_14', proof_hash, '"1a4a80f03b11c41c3250ed27e560308d3e5052a714a000a93189d39f0a9fc7b2"').
lmfdb_object('lmfdb_reconstructed_parquet_15', parquet_row, []).
lmfdb_property('lmfdb_reconstructed_parquet_15', shard_id, '22').
lmfdb_property('lmfdb_reconstructed_parquet_15', chunk_id, '52').
lmfdb_property('lmfdb_reconstructed_parquet_15', witness_id, '45').
lmfdb_property('lmfdb_reconstructed_parquet_15', object_id, '"1f5f54dc"').
lmfdb_property('lmfdb_reconstructed_parquet_15', type, '"field_size"').
lmfdb_property('lmfdb_reconstructed_parquet_15', file, '"scripts/ecnf/hmf_check_find.py"').
lmfdb_property('lmfdb_reconstructed_parquet_15', line, '613').
lmfdb_property('lmfdb_reconstructed_parquet_15', complexity, '40').
lmfdb_property('lmfdb_reconstructed_parquet_15', level, '41').
lmfdb_property('lmfdb_reconstructed_parquet_15', base_complexity, '31').
lmfdb_property('lmfdb_reconstructed_parquet_15', code, '"if field_label==\\'4.4.7168.1\\': bad_p = [29**2]"').
lmfdb_property('lmfdb_reconstructed_parquet_15', proof_hash, '"c92dfbcc1f46cd35d96fe1db2ae160c08bac302ed26346789dc0b2ab3b26558d"').
lmfdb_object('lmfdb_reconstructed_parquet_16', parquet_row, []).
lmfdb_property('lmfdb_reconstructed_parquet_16', shard_id, '22').
lmfdb_property('lmfdb_reconstructed_parquet_16', chunk_id, '55').
lmfdb_property('lmfdb_reconstructed_parquet_16', witness_id, '37').
lmfdb_property('lmfdb_reconstructed_parquet_16', object_id, '"86b64cb4"').
lmfdb_property('lmfdb_reconstructed_parquet_16', type, '"eigenvalue"').
lmfdb_property('lmfdb_reconstructed_parquet_16', file, '"lmfdb/modular_curves/main.py"').
lmfdb_property('lmfdb_reconstructed_parquet_16', line, '1031').
lmfdb_property('lmfdb_reconstructed_parquet_16', complexity, '56').
lmfdb_property('lmfdb_reconstructed_parquet_16', level, '57').
lmfdb_property('lmfdb_reconstructed_parquet_16', base_complexity, '42').
lmfdb_property('lmfdb_reconstructed_parquet_16', code, '"lambda x: r"&#x2713;" if x == 4 else (r"" if x in [2,-1,-2,-3,-4] else r"<i>?</i>"), align="center")"').
lmfdb_property('lmfdb_reconstructed_parquet_16', proof_hash, '"0c38000c3dbd2845c052977d803d62f918d02cedbad2849168ad9cfa7e28ec81"').
lmfdb_object('lmfdb_reconstructed_parquet_17', parquet_row, []).
lmfdb_property('lmfdb_reconstructed_parquet_17', shard_id, '23').
lmfdb_property('lmfdb_reconstructed_parquet_17', chunk_id, '0').
lmfdb_property('lmfdb_reconstructed_parquet_17', witness_id, '1').
lmfdb_property('lmfdb_reconstructed_parquet_17', object_id, '"4f5abc3d"').
lmfdb_property('lmfdb_reconstructed_parquet_17', type, '"collection"').
lmfdb_property('lmfdb_reconstructed_parquet_17', file, '"lmfdb/utils/completeness.py"').
lmfdb_property('lmfdb_reconstructed_parquet_17', line, '1634').
lmfdb_property('lmfdb_reconstructed_parquet_17', complexity, '23').
lmfdb_property('lmfdb_reconstructed_parquet_17', level, '24').
lmfdb_property('lmfdb_reconstructed_parquet_17', base_complexity, '5').
lmfdb_property('lmfdb_reconstructed_parquet_17', code, '""').
lmfdb_property('lmfdb_reconstructed_parquet_17', proof_hash, '"b589d6b2776cee621450e700cbc28f609e275226bc0487b0b6f5ad69205d041c"').
lmfdb_object('lmfdb_reconstructed_parquet_18', parquet_row, []).
lmfdb_property('lmfdb_reconstructed_parquet_18', shard_id, '24').
lmfdb_property('lmfdb_reconstructed_parquet_18', chunk_id, '60').
lmfdb_property('lmfdb_reconstructed_parquet_18', witness_id, '56').
lmfdb_property('lmfdb_reconstructed_parquet_18', object_id, '"0c0a7407"').
lmfdb_property('lmfdb_reconstructed_parquet_18', type, '"prime"').
lmfdb_property('lmfdb_reconstructed_parquet_18', file, '"lmfdb/abvar/fq/main.py"').
lmfdb_property('lmfdb_reconstructed_parquet_18', line, '269').
lmfdb_property('lmfdb_reconstructed_parquet_18', complexity, '5').
lmfdb_property('lmfdb_reconstructed_parquet_18', level, '6').
lmfdb_property('lmfdb_reconstructed_parquet_18', base_complexity, '1').
lmfdb_property('lmfdb_reconstructed_parquet_18', code, '"example="[75,7125]","').
lmfdb_property('lmfdb_reconstructed_parquet_18', proof_hash, '"fed2f11b2c14df881a754c71c2eaf0d2a64381fccb33c9891f111ebb70dd7808"').
lmfdb_object('lmfdb_reconstructed_parquet_19', parquet_row, []).
lmfdb_property('lmfdb_reconstructed_parquet_19', shard_id, '25').
lmfdb_property('lmfdb_reconstructed_parquet_19', chunk_id, '0').
lmfdb_property('lmfdb_reconstructed_parquet_19', witness_id, '24').
lmfdb_property('lmfdb_reconstructed_parquet_19', object_id, '"d00f0ef7"').
lmfdb_property('lmfdb_reconstructed_parquet_19', type, '"collection"').
lmfdb_property('lmfdb_reconstructed_parquet_19', file, '"lmfdb/utils/completeness.py"').
lmfdb_property('lmfdb_reconstructed_parquet_19', line, '1586').
lmfdb_property('lmfdb_reconstructed_parquet_19', complexity, '22').
lmfdb_property('lmfdb_reconstructed_parquet_19', level, '23').
lmfdb_property('lmfdb_reconstructed_parquet_19', base_complexity, '5').
lmfdb_property('lmfdb_reconstructed_parquet_19', code, '""').
lmfdb_property('lmfdb_reconstructed_parquet_19', proof_hash, '"d819a7c12a4a151b9ea8c29bfe1e60ad8a77c687df9c77db9fc4bc6d7e71da47"').
lmfdb_object('lmfdb_reconstructed_parquet_20', parquet_row, []).
lmfdb_property('lmfdb_reconstructed_parquet_20', shard_id, '26').
lmfdb_property('lmfdb_reconstructed_parquet_20', chunk_id, '44').
lmfdb_property('lmfdb_reconstructed_parquet_20', witness_id, '55').
lmfdb_property('lmfdb_reconstructed_parquet_20', object_id, '"a2ec5f9c"').
lmfdb_property('lmfdb_reconstructed_parquet_20', type, '"prime"').
lmfdb_property('lmfdb_reconstructed_parquet_20', file, '"lmfdb/belyi/test_belyi.py"').
lmfdb_property('lmfdb_reconstructed_parquet_20', line, '197').
lmfdb_property('lmfdb_reconstructed_parquet_20', complexity, '6').
lmfdb_property('lmfdb_reconstructed_parquet_20', level, '7').
lmfdb_property('lmfdb_reconstructed_parquet_20', base_complexity, '1').
lmfdb_property('lmfdb_reconstructed_parquet_20', code, '""phi = (1/2*x^2+2/5*x+1/200*(nu+5))/(x^5+6/5*x^4+1/50*(7*nu+5)*x^3+1/250*(35*nu-57)*x^2+1/10000*(91*"').
lmfdb_property('lmfdb_reconstructed_parquet_20', proof_hash, '"943b00f1b84c8d6bad130610e4b52dc9118d95496ea93c092efd59985d518174"').
lmfdb_object('lmfdb_reconstructed_parquet_21', parquet_row, []).
lmfdb_property('lmfdb_reconstructed_parquet_21', shard_id, '34').
lmfdb_property('lmfdb_reconstructed_parquet_21', chunk_id, '0').
lmfdb_property('lmfdb_reconstructed_parquet_21', witness_id, '42').
lmfdb_property('lmfdb_reconstructed_parquet_21', object_id, '"c9789da0"').
lmfdb_property('lmfdb_reconstructed_parquet_21', type, '"prime"').
lmfdb_property('lmfdb_reconstructed_parquet_21', file, '"lmfdb/utils/completeness.py"').
lmfdb_property('lmfdb_reconstructed_parquet_21', line, '2385').
lmfdb_property('lmfdb_reconstructed_parquet_21', complexity, '26').
lmfdb_property('lmfdb_reconstructed_parquet_21', level, '27').
lmfdb_property('lmfdb_reconstructed_parquet_21', base_complexity, '1').
lmfdb_property('lmfdb_reconstructed_parquet_21', code, '"#POmega-(8,4) = 67536471195648000"').
lmfdb_property('lmfdb_reconstructed_parquet_21', proof_hash, '"314fa462bac15e4b55d4cfa015f7a35c5aa2ede2bc23cde89983eb6b2e7c1b69"').
lmfdb_object('lmfdb_reconstructed_parquet_22', parquet_row, []).
lmfdb_property('lmfdb_reconstructed_parquet_22', shard_id, '35').
lmfdb_property('lmfdb_reconstructed_parquet_22', chunk_id, '0').
lmfdb_property('lmfdb_reconstructed_parquet_22', witness_id, '52').
lmfdb_property('lmfdb_reconstructed_parquet_22', object_id, '"605635cb"').
lmfdb_property('lmfdb_reconstructed_parquet_22', type, '"collection"').
lmfdb_property('lmfdb_reconstructed_parquet_22', file, '"lmfdb/utils/completeness.py"').
lmfdb_property('lmfdb_reconstructed_parquet_22', line, '1614').
lmfdb_property('lmfdb_reconstructed_parquet_22', complexity, '23').
lmfdb_property('lmfdb_reconstructed_parquet_22', level, '24').
lmfdb_property('lmfdb_reconstructed_parquet_22', base_complexity, '5').
lmfdb_property('lmfdb_reconstructed_parquet_22', code, '""').
lmfdb_property('lmfdb_reconstructed_parquet_22', proof_hash, '"ee27cc33a9ea64730da1a4fcaa48d7b686c36aa3fc9b277f5f14748b6bc8e47d"').
lmfdb_object('lmfdb_reconstructed_parquet_23', parquet_row, []).
lmfdb_property('lmfdb_reconstructed_parquet_23', shard_id, '36').
lmfdb_property('lmfdb_reconstructed_parquet_23', chunk_id, '47').
lmfdb_property('lmfdb_reconstructed_parquet_23', witness_id, '5').
lmfdb_property('lmfdb_reconstructed_parquet_23', object_id, '"9cfda021"').
lmfdb_property('lmfdb_reconstructed_parquet_23', type, '"eigenvalue"').
lmfdb_property('lmfdb_reconstructed_parquet_23', file, '"lmfdb/hilbert_modular_forms/hilbert_modular_form.py"').
lmfdb_property('lmfdb_reconstructed_parquet_23', line, '147').
lmfdb_property('lmfdb_reconstructed_parquet_23', complexity, '51').
lmfdb_property('lmfdb_reconstructed_parquet_23', level, '52').
lmfdb_property('lmfdb_reconstructed_parquet_23', base_complexity, '42').
lmfdb_property('lmfdb_reconstructed_parquet_23', code, '"ProcessedCol("is_base_change", "mf.base_change", "Base change", lambda bc: "&#x2713;" if bc == "yes""').
lmfdb_property('lmfdb_reconstructed_parquet_23', proof_hash, '"113321a058bc7597db9ea6065a278011d6bc33d461d1ae5399ad7ea0f1965e4e"').
lmfdb_object('lmfdb_reconstructed_parquet_24', parquet_row, []).
lmfdb_property('lmfdb_reconstructed_parquet_24', shard_id, '36').
lmfdb_property('lmfdb_reconstructed_parquet_24', chunk_id, '56').
lmfdb_property('lmfdb_reconstructed_parquet_24', witness_id, '7').
lmfdb_property('lmfdb_reconstructed_parquet_24', object_id, '"fc43f8a6"').
lmfdb_property('lmfdb_reconstructed_parquet_24', type, '"collection"').
lmfdb_property('lmfdb_reconstructed_parquet_24', file, '"lmfdb/hypergm/main.py"').
lmfdb_property('lmfdb_reconstructed_parquet_24', line, '504').
lmfdb_property('lmfdb_reconstructed_parquet_24', complexity, '12').
lmfdb_property('lmfdb_reconstructed_parquet_24', level, '13').
lmfdb_property('lmfdb_reconstructed_parquet_24', base_complexity, '5').
lmfdb_property('lmfdb_reconstructed_parquet_24', code, '""').
lmfdb_property('lmfdb_reconstructed_parquet_24', proof_hash, '"e4dc400b1e58a12cc84f5543d2319a0bf03049246ce6adaba80d910d036cddbd"').
lmfdb_object('lmfdb_reconstructed_parquet_25', parquet_row, []).
lmfdb_property('lmfdb_reconstructed_parquet_25', shard_id, '38').
lmfdb_property('lmfdb_reconstructed_parquet_25', chunk_id, '7').
lmfdb_property('lmfdb_reconstructed_parquet_25', witness_id, '10').
lmfdb_property('lmfdb_reconstructed_parquet_25', object_id, '"70cded62"').
lmfdb_property('lmfdb_reconstructed_parquet_25', type, '"coefficient"').
lmfdb_property('lmfdb_reconstructed_parquet_25', file, '"lmfdb/abvar/fq/test_browse_page.py"').
lmfdb_property('lmfdb_reconstructed_parquet_25', line, '294').
lmfdb_property('lmfdb_reconstructed_parquet_25', complexity, '47').
lmfdb_property('lmfdb_reconstructed_parquet_25', level, '48').
lmfdb_property('lmfdb_reconstructed_parquet_25', base_complexity, '41').
lmfdb_property('lmfdb_reconstructed_parquet_25', code, '""/Variety/Abelian/Fq/?initial_coefficients=%5B1%2C-1%2C3%2C9%5D&abvar_point_count=%5B75%2C7125%5D","').
lmfdb_property('lmfdb_reconstructed_parquet_25', proof_hash, '"16ad9cb5dc4680475ab9568f134c91f927553341554b09afd4fc130417a76c0a"').
lmfdb_object('lmfdb_reconstructed_parquet_26', parquet_row, []).
lmfdb_property('lmfdb_reconstructed_parquet_26', shard_id, '38').
lmfdb_property('lmfdb_reconstructed_parquet_26', chunk_id, '7').
lmfdb_property('lmfdb_reconstructed_parquet_26', witness_id, '35').
lmfdb_property('lmfdb_reconstructed_parquet_26', object_id, '"c90782f9"').
lmfdb_property('lmfdb_reconstructed_parquet_26', type, '"prime"').
lmfdb_property('lmfdb_reconstructed_parquet_26', file, '"lmfdb/abvar/fq/test_browse_page.py"').
lmfdb_property('lmfdb_reconstructed_parquet_26', line, '177').
lmfdb_property('lmfdb_reconstructed_parquet_26', complexity, '6').
lmfdb_property('lmfdb_reconstructed_parquet_26', level, '7').
lmfdb_property('lmfdb_reconstructed_parquet_26', base_complexity, '1').
lmfdb_property('lmfdb_reconstructed_parquet_26', code, '"self.check_args("/Variety/Abelian/Fq/?abvar_point_count=%5B75%2C7125%5D", "2.9.ab_d")"').
lmfdb_property('lmfdb_reconstructed_parquet_26', proof_hash, '"cc4d48a180d0f34777eeb12c390be32804f7dd3ab69389a9e8982c6b607e358a"').
lmfdb_object('lmfdb_reconstructed_parquet_27', parquet_row, []).
lmfdb_property('lmfdb_reconstructed_parquet_27', shard_id, '44').
lmfdb_property('lmfdb_reconstructed_parquet_27', chunk_id, '38').
lmfdb_property('lmfdb_reconstructed_parquet_27', witness_id, '17').
lmfdb_property('lmfdb_reconstructed_parquet_27', object_id, '"b140569b"').
lmfdb_property('lmfdb_reconstructed_parquet_27', type, '"prime"').
lmfdb_property('lmfdb_reconstructed_parquet_27', file, '"lmfdb/number_fields/test_numberfield.py"').
lmfdb_property('lmfdb_reconstructed_parquet_27', line, '88').
lmfdb_property('lmfdb_reconstructed_parquet_27', complexity, '5').
lmfdb_property('lmfdb_reconstructed_parquet_27', level, '6').
lmfdb_property('lmfdb_reconstructed_parquet_27', base_complexity, '1').
lmfdb_property('lmfdb_reconstructed_parquet_27', code, '"self.check_args(\\'/NumberField/?signature=%5B0%2C3%5D&galois_group=S3\\', \\'6.0.177147.2\\')"').
lmfdb_property('lmfdb_reconstructed_parquet_27', proof_hash, '"4f7d861d944f65659f090c6b8cc91d7026e4033e6e87c518e465b7fc9c45706a"').
lmfdb_object('lmfdb_reconstructed_parquet_28', parquet_row, []).
lmfdb_property('lmfdb_reconstructed_parquet_28', shard_id, '44').
lmfdb_property('lmfdb_reconstructed_parquet_28', chunk_id, '68').
lmfdb_property('lmfdb_reconstructed_parquet_28', witness_id, '19').
lmfdb_property('lmfdb_reconstructed_parquet_28', object_id, '"7ec202b5"').
lmfdb_property('lmfdb_reconstructed_parquet_28', type, '"collection"').
lmfdb_property('lmfdb_reconstructed_parquet_28', file, '"scripts/ecnf/bmf_check.py"').
lmfdb_property('lmfdb_reconstructed_parquet_28', line, '19').
lmfdb_property('lmfdb_reconstructed_parquet_28', complexity, '7').
lmfdb_property('lmfdb_reconstructed_parquet_28', level, '8').
lmfdb_property('lmfdb_reconstructed_parquet_28', base_complexity, '5').
lmfdb_property('lmfdb_reconstructed_parquet_28', code, '""').
lmfdb_property('lmfdb_reconstructed_parquet_28', proof_hash, '"094572133fffdda0971abe3ba59589647bdadc10851d3758530d5e2369bb1d6a"').
lmfdb_object('lmfdb_reconstructed_parquet_29', parquet_row, []).
lmfdb_property('lmfdb_reconstructed_parquet_29', shard_id, '45').
lmfdb_property('lmfdb_reconstructed_parquet_29', chunk_id, '0').
lmfdb_property('lmfdb_reconstructed_parquet_29', witness_id, '53').
lmfdb_property('lmfdb_reconstructed_parquet_29', object_id, '"a6a04083"').
lmfdb_property('lmfdb_reconstructed_parquet_29', type, '"dict_key"').
lmfdb_property('lmfdb_reconstructed_parquet_29', file, '"lmfdb/utils/completeness.py"').
lmfdb_property('lmfdb_reconstructed_parquet_29', line, '834').
lmfdb_property('lmfdb_reconstructed_parquet_29', complexity, '15').
lmfdb_property('lmfdb_reconstructed_parquet_29', level, '16').
lmfdb_property('lmfdb_reconstructed_parquet_29', base_complexity, '5').
lmfdb_property('lmfdb_reconstructed_parquet_29', code, '""').
lmfdb_property('lmfdb_reconstructed_parquet_29', proof_hash, '"3c2ddd0b2969b7ecc978e15d627c98d556002cbf3376d01e9439ff3665a6239f"').
lmfdb_object('lmfdb_reconstructed_parquet_30', parquet_row, []).
lmfdb_property('lmfdb_reconstructed_parquet_30', shard_id, '45').
lmfdb_property('lmfdb_reconstructed_parquet_30', chunk_id, '4').
lmfdb_property('lmfdb_reconstructed_parquet_30', witness_id, '66').
lmfdb_property('lmfdb_reconstructed_parquet_30', object_id, '"60397b1e"').
lmfdb_property('lmfdb_reconstructed_parquet_30', type, '"prime"').
lmfdb_property('lmfdb_reconstructed_parquet_30', file, '"lmfdb/groups/abstract/main.py"').
lmfdb_property('lmfdb_reconstructed_parquet_30', line, '2977').
lmfdb_property('lmfdb_reconstructed_parquet_30', complexity, '32').
lmfdb_property('lmfdb_reconstructed_parquet_30', level, '33').
lmfdb_property('lmfdb_reconstructed_parquet_30', base_complexity, '1').
lmfdb_property('lmfdb_reconstructed_parquet_30', code, '"example="5120#4714647875464396655","').
lmfdb_property('lmfdb_reconstructed_parquet_30', proof_hash, '"720ad29e0f4f7160b58a565a8436683d335766d4c9413b9fc95421df2d9f2ae7"').
lmfdb_object('lmfdb_reconstructed_parquet_31', parquet_row, []).
lmfdb_property('lmfdb_reconstructed_parquet_31', shard_id, '45').
lmfdb_property('lmfdb_reconstructed_parquet_31', chunk_id, '38').
lmfdb_property('lmfdb_reconstructed_parquet_31', witness_id, '17').
lmfdb_property('lmfdb_reconstructed_parquet_31', object_id, '"77867b5b"').
lmfdb_property('lmfdb_reconstructed_parquet_31', type, '"field_size"').
lmfdb_property('lmfdb_reconstructed_parquet_31', file, '"lmfdb/number_fields/test_numberfield.py"').
lmfdb_property('lmfdb_reconstructed_parquet_31', line, '88').
lmfdb_property('lmfdb_reconstructed_parquet_31', complexity, '35').
lmfdb_property('lmfdb_reconstructed_parquet_31', level, '36').
lmfdb_property('lmfdb_reconstructed_parquet_31', base_complexity, '31').
lmfdb_property('lmfdb_reconstructed_parquet_31', code, '"self.check_args(\\'/NumberField/?signature=%5B0%2C3%5D&galois_group=S3\\', \\'6.0.177147.2\\')"').
lmfdb_property('lmfdb_reconstructed_parquet_31', proof_hash, '"94bfefdbd2fe62f1a70052529bffbd6d8bf47fa95a68a556ac53378933ef5631"').
lmfdb_object('lmfdb_reconstructed_parquet_32', parquet_row, []).
lmfdb_property('lmfdb_reconstructed_parquet_32', shard_id, '49').
lmfdb_property('lmfdb_reconstructed_parquet_32', chunk_id, '7').
lmfdb_property('lmfdb_reconstructed_parquet_32', witness_id, '34').
lmfdb_property('lmfdb_reconstructed_parquet_32', object_id, '"99f94b42"').
lmfdb_property('lmfdb_reconstructed_parquet_32', type, '"prime"').
lmfdb_property('lmfdb_reconstructed_parquet_32', file, '"lmfdb/abvar/fq/test_browse_page.py"').
lmfdb_property('lmfdb_reconstructed_parquet_32', line, '176').
lmfdb_property('lmfdb_reconstructed_parquet_32', complexity, '6').
lmfdb_property('lmfdb_reconstructed_parquet_32', level, '7').
lmfdb_property('lmfdb_reconstructed_parquet_32', base_complexity, '1').
lmfdb_property('lmfdb_reconstructed_parquet_32', code, '"self.check_args("/Variety/Abelian/Fq/?abvar_point_count=%5B75%2C7125%5D", "2.9.ab_d")"').
lmfdb_property('lmfdb_reconstructed_parquet_32', proof_hash, '"62e3fba0e638038692ea5f58ef9c1c9a7910f8c8cf3c7b7e3eed4aa0c35f8c96"').
lmfdb_object('lmfdb_reconstructed_parquet_33', parquet_row, []).
lmfdb_property('lmfdb_reconstructed_parquet_33', shard_id, '51').
lmfdb_property('lmfdb_reconstructed_parquet_33', chunk_id, '61').
lmfdb_property('lmfdb_reconstructed_parquet_33', witness_id, '3').
lmfdb_property('lmfdb_reconstructed_parquet_33', object_id, '"f5948b2f"').
lmfdb_property('lmfdb_reconstructed_parquet_33', type, '"dict_value"').
lmfdb_property('lmfdb_reconstructed_parquet_33', file, '"lmfdb/number_fields/web_number_field.py"').
lmfdb_property('lmfdb_reconstructed_parquet_33', line, '74').
lmfdb_property('lmfdb_reconstructed_parquet_33', complexity, '8').
lmfdb_property('lmfdb_reconstructed_parquet_33', level, '9').
lmfdb_property('lmfdb_reconstructed_parquet_33', base_complexity, '5').
lmfdb_property('lmfdb_reconstructed_parquet_33', code, '""').
lmfdb_property('lmfdb_reconstructed_parquet_33', proof_hash, '"48710efc1a816daa9cb8fe9622d7e93ec4d171e8f72a3878ccfa3bd00dbf0fc3"').
lmfdb_object('lmfdb_reconstructed_parquet_34', parquet_row, []).
lmfdb_property('lmfdb_reconstructed_parquet_34', shard_id, '55').
lmfdb_property('lmfdb_reconstructed_parquet_34', chunk_id, '48').
lmfdb_property('lmfdb_reconstructed_parquet_34', witness_id, '38').
lmfdb_property('lmfdb_reconstructed_parquet_34', object_id, '"228dcddd"').
lmfdb_property('lmfdb_reconstructed_parquet_34', type, '"prime"').
lmfdb_property('lmfdb_reconstructed_parquet_34', file, '"lmfdb/classical_modular_forms/test_cmf2.py"').
lmfdb_property('lmfdb_reconstructed_parquet_34', line, '393').
lmfdb_property('lmfdb_reconstructed_parquet_34', complexity, '10').
lmfdb_property('lmfdb_reconstructed_parquet_34', level, '11').
lmfdb_property('lmfdb_reconstructed_parquet_34', base_complexity, '1').
lmfdb_property('lmfdb_reconstructed_parquet_34', code, '"large_dimension_page_as_text = self.tc.get(\\'/ModularForm/GL2/Q/holomorphic/671/2/i/a/\\', follow_redir"').
lmfdb_property('lmfdb_reconstructed_parquet_34', proof_hash, '"265cb07db70abf882f119803b8233a7b89207f6a5c20ab54e07e433fb19b2d71"').
lmfdb_object('lmfdb_reconstructed_parquet_35', parquet_row, []).
lmfdb_property('lmfdb_reconstructed_parquet_35', shard_id, '56').
lmfdb_property('lmfdb_reconstructed_parquet_35', chunk_id, '0').
lmfdb_property('lmfdb_reconstructed_parquet_35', witness_id, '8').
lmfdb_property('lmfdb_reconstructed_parquet_35', object_id, '"3ce5f166"').
lmfdb_property('lmfdb_reconstructed_parquet_35', type, '"collection"').
lmfdb_property('lmfdb_reconstructed_parquet_35', file, '"lmfdb/utils/completeness.py"').
lmfdb_property('lmfdb_reconstructed_parquet_35', line, '1641').
lmfdb_property('lmfdb_reconstructed_parquet_35', complexity, '23').
lmfdb_property('lmfdb_reconstructed_parquet_35', level, '24').
lmfdb_property('lmfdb_reconstructed_parquet_35', base_complexity, '5').
lmfdb_property('lmfdb_reconstructed_parquet_35', code, '""').
lmfdb_property('lmfdb_reconstructed_parquet_35', proof_hash, '"cff8d15cf36210ad8734cb24beb2cbca8aaee955e414a6be115f519f035aa2da"').
lmfdb_object('lmfdb_reconstructed_parquet_36', parquet_row, []).
lmfdb_property('lmfdb_reconstructed_parquet_36', shard_id, '56').
lmfdb_property('lmfdb_reconstructed_parquet_36', chunk_id, '47').
lmfdb_property('lmfdb_reconstructed_parquet_36', witness_id, '4').
lmfdb_property('lmfdb_reconstructed_parquet_36', object_id, '"d7554696"').
lmfdb_property('lmfdb_reconstructed_parquet_36', type, '"eigenvalue"').
lmfdb_property('lmfdb_reconstructed_parquet_36', file, '"lmfdb/hilbert_modular_forms/hilbert_modular_form.py"').
lmfdb_property('lmfdb_reconstructed_parquet_36', line, '146').
lmfdb_property('lmfdb_reconstructed_parquet_36', complexity, '51').
lmfdb_property('lmfdb_reconstructed_parquet_36', level, '52').
lmfdb_property('lmfdb_reconstructed_parquet_36', base_complexity, '42').
lmfdb_property('lmfdb_reconstructed_parquet_36', code, '"ProcessedCol("is_CM", "mf.cm", "CM", lambda cm: "&#x2713;" if cm == "yes" else "", short_title="CM","').
lmfdb_property('lmfdb_reconstructed_parquet_36', proof_hash, '"323f639b0133037c69e143d5cedbba9ea742d33ba46d8cffb28947b662b354dd"').
lmfdb_object('lmfdb_reconstructed_parquet_37', parquet_row, []).
lmfdb_property('lmfdb_reconstructed_parquet_37', shard_id, '60').
lmfdb_property('lmfdb_reconstructed_parquet_37', chunk_id, '56').
lmfdb_property('lmfdb_reconstructed_parquet_37', witness_id, '7').
lmfdb_property('lmfdb_reconstructed_parquet_37', object_id, '"906bd07a"').
lmfdb_property('lmfdb_reconstructed_parquet_37', type, '"prime"').
lmfdb_property('lmfdb_reconstructed_parquet_37', file, '"lmfdb/hypergm/main.py"').
lmfdb_property('lmfdb_reconstructed_parquet_37', line, '504').
lmfdb_property('lmfdb_reconstructed_parquet_37', complexity, '9').
lmfdb_property('lmfdb_reconstructed_parquet_37', level, '10').
lmfdb_property('lmfdb_reconstructed_parquet_37', base_complexity, '1').
lmfdb_property('lmfdb_reconstructed_parquet_37', code, '"primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71]"').
lmfdb_property('lmfdb_reconstructed_parquet_37', proof_hash, '"a7462b9aa54cecf8afb44e3a5a6153d9bbf3e2b0e63baface6b6c5ad1205b3e0"').
lmfdb_object('lmfdb_reconstructed_parquet_38', parquet_row, []).
lmfdb_property('lmfdb_reconstructed_parquet_38', shard_id, '64').
lmfdb_property('lmfdb_reconstructed_parquet_38', chunk_id, '0').
lmfdb_property('lmfdb_reconstructed_parquet_38', witness_id, '60').
lmfdb_property('lmfdb_reconstructed_parquet_38', object_id, '"8f133379"').
lmfdb_property('lmfdb_reconstructed_parquet_38', type, '"collection"').
lmfdb_property('lmfdb_reconstructed_parquet_38', file, '"lmfdb/utils/completeness.py"').
lmfdb_property('lmfdb_reconstructed_parquet_38', line, '1551').
lmfdb_property('lmfdb_reconstructed_parquet_38', complexity, '22').
lmfdb_property('lmfdb_reconstructed_parquet_38', level, '23').
lmfdb_property('lmfdb_reconstructed_parquet_38', base_complexity, '5').
lmfdb_property('lmfdb_reconstructed_parquet_38', code, '""').
lmfdb_property('lmfdb_reconstructed_parquet_38', proof_hash, '"2412d400898decbe2c9130b0c53aeb98a1544fd8b5829f497f5af4322106ba4a"').
lmfdb_object('lmfdb_reconstructed_parquet_39', parquet_row, []).
lmfdb_property('lmfdb_reconstructed_parquet_39', shard_id, '66').
lmfdb_property('lmfdb_reconstructed_parquet_39', chunk_id, '33').
lmfdb_property('lmfdb_reconstructed_parquet_39', witness_id, '42').
lmfdb_property('lmfdb_reconstructed_parquet_39', object_id, '"ef84d6b2"').
lmfdb_property('lmfdb_reconstructed_parquet_39', type, '"prime"').
lmfdb_property('lmfdb_reconstructed_parquet_39', file, '"lmfdb/utils/search_parsing.py"').
lmfdb_property('lmfdb_reconstructed_parquet_39', line, '1036').
lmfdb_property('lmfdb_reconstructed_parquet_39', complexity, '13').
lmfdb_property('lmfdb_reconstructed_parquet_39', level, '14').
lmfdb_property('lmfdb_reconstructed_parquet_39', base_complexity, '1').
lmfdb_property('lmfdb_reconstructed_parquet_39', code, '"example = "[1/7,2,3] or [5,6/71]""').
lmfdb_property('lmfdb_reconstructed_parquet_39', proof_hash, '"a936f18cee10729c6d70f42315d87f1e2bfc5fce353fc9e9c90ca5cd1cb8f0e8"').
lmfdb_object('lmfdb_reconstructed_parquet_40', parquet_row, []).
lmfdb_property('lmfdb_reconstructed_parquet_40', shard_id, '70').
lmfdb_property('lmfdb_reconstructed_parquet_40', chunk_id, '7').
lmfdb_property('lmfdb_reconstructed_parquet_40', witness_id, '14').
lmfdb_property('lmfdb_reconstructed_parquet_40', object_id, '"77408076"').
lmfdb_property('lmfdb_reconstructed_parquet_40', type, '"coefficient"').
lmfdb_property('lmfdb_reconstructed_parquet_40', file, '"lmfdb/abvar/fq/test_browse_page.py"').
lmfdb_property('lmfdb_reconstructed_parquet_40', line, '298').
lmfdb_property('lmfdb_reconstructed_parquet_40', complexity, '47').
lmfdb_property('lmfdb_reconstructed_parquet_40', level, '48').
lmfdb_property('lmfdb_reconstructed_parquet_40', base_complexity, '41').
lmfdb_property('lmfdb_reconstructed_parquet_40', code, '""/Variety/Abelian/Fq/?initial_coefficients=%5B1%2C-1%2C3%2C9%5D&abvar_point_count=%5B75%2C7125%5D","').
lmfdb_property('lmfdb_reconstructed_parquet_40', proof_hash, '"d54677a46716e72cddf88be6351d80ac2d4f51948268dfb4c42e9aa66339d604"').

% JSON: lmfdb_71_sweep.json
lmfdb_file('/home/mdupont/experiments/monster/temp/ci_artifacts/lmfdb_71_sweep.json', json, 18).
lmfdb_property('lmfdb_71_sweep_json', total_matches, 27).

% Parquet: lmfdb_jinvariant_objects.parquet
lmfdb_file('/home/mdupont/experiments/monster/temp/ci_artifacts/lmfdb_jinvariant_objects.parquet', parquet, 1).
lmfdb_object('lmfdb_jinvariant_objects_parquet_0', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_0', number, '71').
lmfdb_property('lmfdb_jinvariant_objects_parquet_0', j_invariant, '47').
lmfdb_property('lmfdb_jinvariant_objects_parquet_0', class_name, '"Class71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_0', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_0', operator_symbol, '"T_71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_0', operator_formula, '"(x * 71) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_0', function_name, '"f_71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_0', function_signature, '"f_71(x) = (x * 71) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_0', module_name, '"Module71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_0', module_rank, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_0', id, '"9f2ea761"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_0', file, '"user-manager.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_0', line, '6').
lmfdb_property('lmfdb_jinvariant_objects_parquet_0', shard, '0').
lmfdb_property('lmfdb_jinvariant_objects_parquet_0', complexity, '70.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_1', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_1', number, '71').
lmfdb_property('lmfdb_jinvariant_objects_parquet_1', j_invariant, '47').
lmfdb_property('lmfdb_jinvariant_objects_parquet_1', class_name, '"Class71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_1', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_1', operator_symbol, '"T_71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_1', operator_formula, '"(x * 71) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_1', function_name, '"f_71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_1', function_signature, '"f_71(x) = (x * 71) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_1', module_name, '"Module71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_1', module_rank, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_1', id, '"24887db9"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_1', file, '".github/workflows/generate-matrix.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_1', line, '6').
lmfdb_property('lmfdb_jinvariant_objects_parquet_1', shard, '0').
lmfdb_property('lmfdb_jinvariant_objects_parquet_1', complexity, '70.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_2', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_2', number, '71').
lmfdb_property('lmfdb_jinvariant_objects_parquet_2', j_invariant, '47').
lmfdb_property('lmfdb_jinvariant_objects_parquet_2', class_name, '"Class71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_2', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_2', operator_symbol, '"T_71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_2', operator_formula, '"(x * 71) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_2', function_name, '"f_71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_2', function_signature, '"f_71(x) = (x * 71) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_2', module_name, '"Module71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_2', module_rank, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_2', id, '"e1a85a1c"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_2', file, '"scripts/elliptic_curves/import_ec_lfunction_data.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_2', line, '148').
lmfdb_property('lmfdb_jinvariant_objects_parquet_2', shard, '0').
lmfdb_property('lmfdb_jinvariant_objects_parquet_2', complexity, '70.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_3', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_3', number, '71').
lmfdb_property('lmfdb_jinvariant_objects_parquet_3', j_invariant, '47').
lmfdb_property('lmfdb_jinvariant_objects_parquet_3', class_name, '"Class71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_3', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_3', operator_symbol, '"T_71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_3', operator_formula, '"(x * 71) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_3', function_name, '"f_71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_3', function_signature, '"f_71(x) = (x * 71) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_3', module_name, '"Module71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_3', module_rank, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_3', id, '"fdc3857f"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_3', file, '"scripts/elliptic_curves/import_ec_lfunction_data.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_3', line, '251').
lmfdb_property('lmfdb_jinvariant_objects_parquet_3', shard, '0').
lmfdb_property('lmfdb_jinvariant_objects_parquet_3', complexity, '70.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_4', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_4', number, '1').
lmfdb_property('lmfdb_jinvariant_objects_parquet_4', j_invariant, '48').
lmfdb_property('lmfdb_jinvariant_objects_parquet_4', class_name, '"Class1"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_4', class_type, '"math_function"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_4', operator_symbol, '"T_1"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_4', operator_formula, '"(x * 1) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_4', function_name, '"makeLfromdata"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_4', function_signature, '"f_1(x) = (x * 1) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_4', module_name, '"Module1"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_4', module_rank, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_4', id, '"faa38d4b"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_4', file, '"lmfdb/lfunctions/Lfunction.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_4', line, '139').
lmfdb_property('lmfdb_jinvariant_objects_parquet_4', shard, '1').
lmfdb_property('lmfdb_jinvariant_objects_parquet_4', complexity, '71.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_5', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_5', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_5', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_5', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_5', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_5', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_5', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_5', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_5', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_5', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_5', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_5', id, '"d0525794"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_5', file, '"user-manager.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_5', line, '24').
lmfdb_property('lmfdb_jinvariant_objects_parquet_5', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_5', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_6', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_6', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_6', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_6', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_6', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_6', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_6', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_6', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_6', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_6', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_6', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_6', id, '"2404b666"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_6', file, '"user-manager.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_6', line, '26').
lmfdb_property('lmfdb_jinvariant_objects_parquet_6', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_6', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_7', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_7', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_7', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_7', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_7', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_7', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_7', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_7', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_7', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_7', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_7', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_7', id, '"021edd82"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_7', file, '".github/workflows/generate-matrix.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_7', line, '8').
lmfdb_property('lmfdb_jinvariant_objects_parquet_7', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_7', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_8', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_8', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_8', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_8', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_8', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_8', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_8', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_8', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_8', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_8', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_8', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_8', id, '"5aefb438"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_8', file, '".github/workflows/generate-matrix.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_8', line, '29').
lmfdb_property('lmfdb_jinvariant_objects_parquet_8', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_8', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_9', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_9', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_9', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_9', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_9', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_9', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_9', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_9', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_9', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_9', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_9', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_9', id, '"acfcdf47"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_9', file, '".github/workflows/generate-matrix.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_9', line, '30').
lmfdb_property('lmfdb_jinvariant_objects_parquet_9', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_9', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_10', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_10', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_10', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_10', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_10', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_10', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_10', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_10', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_10', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_10', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_10', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_10', id, '"983ab9a6"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_10', file, '".github/workflows/generate-matrix.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_10', line, '21').
lmfdb_property('lmfdb_jinvariant_objects_parquet_10', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_10', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_11', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_11', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_11', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_11', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_11', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_11', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_11', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_11', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_11', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_11', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_11', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_11', id, '"983ab9a6"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_11', file, '".github/workflows/generate-matrix.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_11', line, '21').
lmfdb_property('lmfdb_jinvariant_objects_parquet_11', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_11', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_12', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_12', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_12', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_12', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_12', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_12', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_12', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_12', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_12', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_12', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_12', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_12', id, '"983ab9a6"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_12', file, '".github/workflows/generate-matrix.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_12', line, '21').
lmfdb_property('lmfdb_jinvariant_objects_parquet_12', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_12', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_13', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_13', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_13', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_13', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_13', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_13', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_13', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_13', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_13', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_13', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_13', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_13', id, '"ad3a3edf"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_13', file, '".github/workflows/generate-matrix.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_13', line, '26').
lmfdb_property('lmfdb_jinvariant_objects_parquet_13', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_13', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_14', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_14', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_14', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_14', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_14', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_14', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_14', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_14', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_14', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_14', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_14', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_14', id, '"983ab9a6"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_14', file, '".github/workflows/generate-matrix.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_14', line, '21').
lmfdb_property('lmfdb_jinvariant_objects_parquet_14', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_14', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_15', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_15', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_15', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_15', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_15', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_15', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_15', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_15', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_15', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_15', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_15', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_15', id, '"e957c93c"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_15', file, '".github/workflows/generate_autopep8codes.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_15', line, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_15', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_15', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_16', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_16', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_16', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_16', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_16', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_16', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_16', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_16', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_16', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_16', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_16', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_16', id, '"e957c93c"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_16', file, '".github/workflows/generate_autopep8codes.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_16', line, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_16', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_16', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_17', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_17', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_17', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_17', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_17', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_17', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_17', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_17', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_17', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_17', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_17', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_17', id, '"6eb9cd6f"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_17', file, '".github/workflows/generate_autopep8codes.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_17', line, '5').
lmfdb_property('lmfdb_jinvariant_objects_parquet_17', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_17', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_18', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_18', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_18', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_18', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_18', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_18', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_18', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_18', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_18', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_18', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_18', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_18', id, '"6eb9cd6f"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_18', file, '".github/workflows/generate_autopep8codes.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_18', line, '5').
lmfdb_property('lmfdb_jinvariant_objects_parquet_18', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_18', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_19', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_19', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_19', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_19', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_19', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_19', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_19', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_19', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_19', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_19', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_19', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_19', id, '"6eb9cd6f"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_19', file, '".github/workflows/generate_autopep8codes.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_19', line, '5').
lmfdb_property('lmfdb_jinvariant_objects_parquet_19', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_19', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_20', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_20', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_20', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_20', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_20', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_20', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_20', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_20', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_20', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_20', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_20', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_20', id, '"7256afb2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_20', file, '".github/workflows/generate_autopep8codes.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_20', line, '51').
lmfdb_property('lmfdb_jinvariant_objects_parquet_20', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_20', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_21', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_21', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_21', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_21', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_21', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_21', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_21', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_21', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_21', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_21', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_21', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_21', id, '"7256afb2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_21', file, '".github/workflows/generate_autopep8codes.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_21', line, '51').
lmfdb_property('lmfdb_jinvariant_objects_parquet_21', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_21', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_22', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_22', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_22', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_22', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_22', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_22', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_22', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_22', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_22', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_22', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_22', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_22', id, '"fedeeb77"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_22', file, '".github/workflows/generate_autopep8codes.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_22', line, '52').
lmfdb_property('lmfdb_jinvariant_objects_parquet_22', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_22', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_23', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_23', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_23', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_23', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_23', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_23', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_23', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_23', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_23', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_23', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_23', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_23', id, '"7256afb2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_23', file, '".github/workflows/generate_autopep8codes.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_23', line, '51').
lmfdb_property('lmfdb_jinvariant_objects_parquet_23', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_23', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_24', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_24', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_24', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_24', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_24', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_24', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_24', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_24', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_24', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_24', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_24', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_24', id, '"fedeeb77"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_24', file, '".github/workflows/generate_autopep8codes.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_24', line, '52').
lmfdb_property('lmfdb_jinvariant_objects_parquet_24', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_24', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_25', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_25', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_25', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_25', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_25', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_25', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_25', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_25', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_25', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_25', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_25', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_25', id, '"f778ab3f"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_25', file, '".github/workflows/generate_autopep8codes.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_25', line, '61').
lmfdb_property('lmfdb_jinvariant_objects_parquet_25', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_25', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_26', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_26', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_26', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_26', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_26', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_26', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_26', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_26', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_26', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_26', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_26', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_26', id, '"2b315d87"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_26', file, '".github/workflows/generate_autopep8codes.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_26', line, '65').
lmfdb_property('lmfdb_jinvariant_objects_parquet_26', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_26', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_27', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_27', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_27', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_27', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_27', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_27', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_27', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_27', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_27', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_27', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_27', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_27', id, '"6eb9cd6f"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_27', file, '".github/workflows/generate_autopep8codes.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_27', line, '5').
lmfdb_property('lmfdb_jinvariant_objects_parquet_27', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_27', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_28', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_28', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_28', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_28', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_28', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_28', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_28', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_28', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_28', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_28', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_28', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_28', id, '"441cc5db"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_28', file, '"scripts/import_overwrite_generic.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_28', line, '9').
lmfdb_property('lmfdb_jinvariant_objects_parquet_28', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_28', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_29', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_29', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_29', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_29', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_29', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_29', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_29', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_29', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_29', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_29', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_29', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_29', id, '"54ca8c97"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_29', file, '"scripts/import_overwrite_generic.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_29', line, '10').
lmfdb_property('lmfdb_jinvariant_objects_parquet_29', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_29', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_30', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_30', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_30', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_30', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_30', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_30', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_30', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_30', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_30', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_30', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_30', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_30', id, '"f25c3aa4"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_30', file, '"scripts/import_overwrite_generic.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_30', line, '11').
lmfdb_property('lmfdb_jinvariant_objects_parquet_30', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_30', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_31', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_31', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_31', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_31', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_31', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_31', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_31', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_31', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_31', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_31', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_31', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_31', id, '"b6b3da4e"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_31', file, '"scripts/import_overwrite_generic.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_31', line, '12').
lmfdb_property('lmfdb_jinvariant_objects_parquet_31', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_31', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_32', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_32', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_32', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_32', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_32', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_32', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_32', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_32', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_32', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_32', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_32', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_32', id, '"74244205"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_32', file, '"scripts/import_overwrite_generic.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_32', line, '23').
lmfdb_property('lmfdb_jinvariant_objects_parquet_32', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_32', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_33', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_33', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_33', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_33', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_33', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_33', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_33', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_33', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_33', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_33', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_33', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_33', id, '"fd3bfab4"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_33', file, '"scripts/import_overwrite_generic.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_33', line, '30').
lmfdb_property('lmfdb_jinvariant_objects_parquet_33', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_33', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_34', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_34', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_34', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_34', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_34', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_34', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_34', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_34', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_34', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_34', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_34', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_34', id, '"fcf7a508"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_34', file, '"scripts/import_overwrite_generic.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_34', line, '47').
lmfdb_property('lmfdb_jinvariant_objects_parquet_34', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_34', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_35', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_35', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_35', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_35', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_35', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_35', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_35', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_35', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_35', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_35', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_35', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_35', id, '"a41a87a9"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_35', file, '"scripts/maass/import_maass_and_maass_lfun.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_35', line, '41').
lmfdb_property('lmfdb_jinvariant_objects_parquet_35', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_35', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_36', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_36', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_36', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_36', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_36', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_36', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_36', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_36', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_36', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_36', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_36', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_36', id, '"a41a87a9"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_36', file, '"scripts/maass/import_maass_and_maass_lfun.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_36', line, '41').
lmfdb_property('lmfdb_jinvariant_objects_parquet_36', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_36', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_37', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_37', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_37', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_37', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_37', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_37', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_37', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_37', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_37', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_37', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_37', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_37', id, '"d39ccee5"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_37', file, '"scripts/maass/import_maass_and_maass_lfun.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_37', line, '34').
lmfdb_property('lmfdb_jinvariant_objects_parquet_37', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_37', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_38', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_38', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_38', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_38', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_38', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_38', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_38', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_38', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_38', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_38', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_38', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_38', id, '"e2925cc6"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_38', file, '"scripts/maass/import_maass_and_maass_lfun.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_38', line, '39').
lmfdb_property('lmfdb_jinvariant_objects_parquet_38', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_38', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_39', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_39', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_39', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_39', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_39', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_39', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_39', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_39', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_39', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_39', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_39', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_39', id, '"e0c82dca"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_39', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_39', line, '9').
lmfdb_property('lmfdb_jinvariant_objects_parquet_39', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_39', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_40', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_40', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_40', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_40', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_40', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_40', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_40', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_40', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_40', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_40', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_40', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_40', id, '"c92348ae"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_40', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_40', line, '47').
lmfdb_property('lmfdb_jinvariant_objects_parquet_40', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_40', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_41', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_41', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_41', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_41', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_41', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_41', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_41', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_41', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_41', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_41', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_41', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_41', id, '"d4b4916c"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_41', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_41', line, '63').
lmfdb_property('lmfdb_jinvariant_objects_parquet_41', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_41', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_42', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_42', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_42', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_42', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_42', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_42', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_42', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_42', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_42', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_42', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_42', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_42', id, '"00c68a62"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_42', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_42', line, '110').
lmfdb_property('lmfdb_jinvariant_objects_parquet_42', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_42', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_43', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_43', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_43', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_43', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_43', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_43', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_43', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_43', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_43', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_43', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_43', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_43', id, '"dab2c409"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_43', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_43', line, '26').
lmfdb_property('lmfdb_jinvariant_objects_parquet_43', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_43', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_44', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_44', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_44', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_44', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_44', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_44', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_44', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_44', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_44', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_44', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_44', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_44', id, '"c2c10dce"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_44', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_44', line, '27').
lmfdb_property('lmfdb_jinvariant_objects_parquet_44', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_44', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_45', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_45', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_45', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_45', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_45', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_45', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_45', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_45', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_45', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_45', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_45', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_45', id, '"36144852"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_45', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_45', line, '54').
lmfdb_property('lmfdb_jinvariant_objects_parquet_45', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_45', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_46', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_46', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_46', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_46', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_46', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_46', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_46', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_46', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_46', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_46', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_46', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_46', id, '"36144852"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_46', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_46', line, '54').
lmfdb_property('lmfdb_jinvariant_objects_parquet_46', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_46', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_47', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_47', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_47', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_47', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_47', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_47', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_47', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_47', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_47', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_47', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_47', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_47', id, '"27583b01"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_47', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_47', line, '60').
lmfdb_property('lmfdb_jinvariant_objects_parquet_47', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_47', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_48', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_48', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_48', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_48', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_48', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_48', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_48', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_48', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_48', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_48', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_48', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_48', id, '"d4b4916c"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_48', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_48', line, '63').
lmfdb_property('lmfdb_jinvariant_objects_parquet_48', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_48', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_49', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_49', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_49', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_49', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_49', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_49', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_49', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_49', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_49', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_49', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_49', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_49', id, '"5c7516ff"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_49', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_49', line, '12').
lmfdb_property('lmfdb_jinvariant_objects_parquet_49', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_49', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_50', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_50', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_50', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_50', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_50', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_50', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_50', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_50', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_50', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_50', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_50', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_50', id, '"0f5dcc8d"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_50', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_50', line, '13').
lmfdb_property('lmfdb_jinvariant_objects_parquet_50', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_50', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_51', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_51', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_51', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_51', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_51', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_51', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_51', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_51', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_51', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_51', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_51', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_51', id, '"f008071b"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_51', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_51', line, '18').
lmfdb_property('lmfdb_jinvariant_objects_parquet_51', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_51', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_52', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_52', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_52', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_52', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_52', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_52', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_52', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_52', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_52', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_52', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_52', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_52', id, '"471c36a3"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_52', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_52', line, '21').
lmfdb_property('lmfdb_jinvariant_objects_parquet_52', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_52', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_53', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_53', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_53', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_53', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_53', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_53', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_53', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_53', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_53', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_53', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_53', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_53', id, '"dab2c409"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_53', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_53', line, '26').
lmfdb_property('lmfdb_jinvariant_objects_parquet_53', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_53', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_54', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_54', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_54', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_54', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_54', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_54', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_54', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_54', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_54', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_54', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_54', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_54', id, '"dd9d021f"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_54', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_54', line, '28').
lmfdb_property('lmfdb_jinvariant_objects_parquet_54', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_54', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_55', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_55', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_55', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_55', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_55', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_55', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_55', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_55', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_55', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_55', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_55', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_55', id, '"dd4e252d"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_55', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_55', line, '62').
lmfdb_property('lmfdb_jinvariant_objects_parquet_55', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_55', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_56', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_56', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_56', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_56', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_56', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_56', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_56', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_56', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_56', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_56', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_56', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_56', id, '"7dc90397"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_56', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_56', line, '76').
lmfdb_property('lmfdb_jinvariant_objects_parquet_56', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_56', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_57', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_57', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_57', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_57', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_57', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_57', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_57', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_57', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_57', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_57', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_57', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_57', id, '"16799db3"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_57', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_57', line, '105').
lmfdb_property('lmfdb_jinvariant_objects_parquet_57', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_57', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_58', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_58', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_58', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_58', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_58', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_58', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_58', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_58', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_58', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_58', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_58', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_58', id, '"a0f086da"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_58', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_58', line, '109').
lmfdb_property('lmfdb_jinvariant_objects_parquet_58', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_58', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_59', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_59', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_59', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_59', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_59', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_59', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_59', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_59', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_59', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_59', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_59', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_59', id, '"a0f086da"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_59', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_59', line, '109').
lmfdb_property('lmfdb_jinvariant_objects_parquet_59', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_59', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_60', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_60', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_60', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_60', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_60', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_60', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_60', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_60', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_60', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_60', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_60', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_60', id, '"506d61a1"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_60', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_60', line, '116').
lmfdb_property('lmfdb_jinvariant_objects_parquet_60', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_60', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_61', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_61', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_61', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_61', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_61', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_61', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_61', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_61', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_61', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_61', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_61', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_61', id, '"d2f5e1b1"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_61', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_61', line, '123').
lmfdb_property('lmfdb_jinvariant_objects_parquet_61', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_61', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_62', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_62', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_62', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_62', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_62', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_62', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_62', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_62', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_62', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_62', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_62', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_62', id, '"0f5dcc8d"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_62', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_62', line, '13').
lmfdb_property('lmfdb_jinvariant_objects_parquet_62', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_62', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_63', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_63', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_63', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_63', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_63', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_63', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_63', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_63', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_63', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_63', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_63', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_63', id, '"cfb01d34"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_63', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_63', line, '14').
lmfdb_property('lmfdb_jinvariant_objects_parquet_63', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_63', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_64', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_64', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_64', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_64', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_64', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_64', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_64', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_64', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_64', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_64', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_64', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_64', id, '"55e5c51d"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_64', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_64', line, '22').
lmfdb_property('lmfdb_jinvariant_objects_parquet_64', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_64', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_65', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_65', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_65', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_65', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_65', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_65', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_65', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_65', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_65', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_65', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_65', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_65', id, '"bbf93407"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_65', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_65', line, '56').
lmfdb_property('lmfdb_jinvariant_objects_parquet_65', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_65', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_66', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_66', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_66', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_66', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_66', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_66', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_66', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_66', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_66', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_66', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_66', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_66', id, '"bbf93407"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_66', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_66', line, '56').
lmfdb_property('lmfdb_jinvariant_objects_parquet_66', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_66', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_67', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_67', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_67', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_67', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_67', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_67', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_67', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_67', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_67', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_67', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_67', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_67', id, '"20b69df6"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_67', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_67', line, '61').
lmfdb_property('lmfdb_jinvariant_objects_parquet_67', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_67', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_68', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_68', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_68', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_68', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_68', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_68', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_68', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_68', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_68', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_68', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_68', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_68', id, '"1bbf235a"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_68', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_68', line, '69').
lmfdb_property('lmfdb_jinvariant_objects_parquet_68', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_68', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_69', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_69', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_69', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_69', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_69', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_69', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_69', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_69', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_69', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_69', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_69', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_69', id, '"59179367"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_69', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_69', line, '89').
lmfdb_property('lmfdb_jinvariant_objects_parquet_69', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_69', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_70', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_70', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_70', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_70', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_70', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_70', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_70', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_70', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_70', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_70', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_70', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_70', id, '"1efa3b28"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_70', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_70', line, '91').
lmfdb_property('lmfdb_jinvariant_objects_parquet_70', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_70', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_71', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_71', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_71', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_71', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_71', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_71', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_71', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_71', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_71', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_71', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_71', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_71', id, '"0b2c29fa"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_71', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_71', line, '113').
lmfdb_property('lmfdb_jinvariant_objects_parquet_71', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_71', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_72', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_72', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_72', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_72', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_72', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_72', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_72', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_72', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_72', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_72', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_72', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_72', id, '"ad46517c"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_72', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_72', line, '128').
lmfdb_property('lmfdb_jinvariant_objects_parquet_72', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_72', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_73', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_73', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_73', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_73', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_73', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_73', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_73', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_73', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_73', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_73', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_73', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_73', id, '"86af0687"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_73', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_73', line, '82').
lmfdb_property('lmfdb_jinvariant_objects_parquet_73', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_73', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_74', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_74', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_74', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_74', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_74', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_74', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_74', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_74', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_74', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_74', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_74', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_74', id, '"35bfd96c"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_74', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_74', line, '106').
lmfdb_property('lmfdb_jinvariant_objects_parquet_74', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_74', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_75', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_75', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_75', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_75', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_75', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_75', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_75', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_75', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_75', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_75', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_75', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_75', id, '"0f5dcc8d"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_75', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_75', line, '13').
lmfdb_property('lmfdb_jinvariant_objects_parquet_75', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_75', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_76', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_76', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_76', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_76', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_76', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_76', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_76', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_76', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_76', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_76', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_76', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_76', id, '"945ae5a7"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_76', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_76', line, '40').
lmfdb_property('lmfdb_jinvariant_objects_parquet_76', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_76', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_77', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_77', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_77', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_77', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_77', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_77', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_77', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_77', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_77', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_77', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_77', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_77', id, '"945ae5a7"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_77', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_77', line, '40').
lmfdb_property('lmfdb_jinvariant_objects_parquet_77', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_77', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_78', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_78', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_78', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_78', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_78', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_78', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_78', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_78', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_78', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_78', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_78', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_78', id, '"cda8dac3"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_78', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_78', line, '84').
lmfdb_property('lmfdb_jinvariant_objects_parquet_78', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_78', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_79', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_79', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_79', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_79', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_79', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_79', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_79', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_79', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_79', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_79', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_79', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_79', id, '"b3f4588c"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_79', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_79', line, '90').
lmfdb_property('lmfdb_jinvariant_objects_parquet_79', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_79', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_80', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_80', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_80', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_80', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_80', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_80', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_80', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_80', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_80', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_80', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_80', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_80', id, '"d2f5e1b1"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_80', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_80', line, '123').
lmfdb_property('lmfdb_jinvariant_objects_parquet_80', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_80', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_81', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_81', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_81', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_81', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_81', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_81', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_81', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_81', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_81', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_81', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_81', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_81', id, '"cda8dac3"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_81', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_81', line, '84').
lmfdb_property('lmfdb_jinvariant_objects_parquet_81', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_81', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_82', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_82', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_82', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_82', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_82', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_82', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_82', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_82', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_82', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_82', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_82', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_82', id, '"50783eea"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_82', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_82', line, '35').
lmfdb_property('lmfdb_jinvariant_objects_parquet_82', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_82', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_83', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_83', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_83', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_83', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_83', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_83', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_83', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_83', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_83', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_83', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_83', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_83', id, '"cc96b058"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_83', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_83', line, '124').
lmfdb_property('lmfdb_jinvariant_objects_parquet_83', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_83', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_84', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_84', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_84', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_84', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_84', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_84', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_84', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_84', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_84', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_84', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_84', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_84', id, '"cc96b058"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_84', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_84', line, '124').
lmfdb_property('lmfdb_jinvariant_objects_parquet_84', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_84', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_85', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_85', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_85', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_85', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_85', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_85', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_85', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_85', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_85', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_85', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_85', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_85', id, '"60a7dd84"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_85', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_85', line, '34').
lmfdb_property('lmfdb_jinvariant_objects_parquet_85', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_85', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_86', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_86', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_86', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_86', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_86', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_86', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_86', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_86', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_86', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_86', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_86', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_86', id, '"60a7dd84"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_86', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_86', line, '34').
lmfdb_property('lmfdb_jinvariant_objects_parquet_86', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_86', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_87', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_87', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_87', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_87', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_87', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_87', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_87', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_87', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_87', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_87', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_87', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_87', id, '"60a7dd84"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_87', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_87', line, '34').
lmfdb_property('lmfdb_jinvariant_objects_parquet_87', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_87', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_88', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_88', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_88', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_88', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_88', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_88', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_88', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_88', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_88', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_88', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_88', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_88', id, '"60a7dd84"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_88', file, '"scripts/classical_modular_forms/populate_euler_factors.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_88', line, '34').
lmfdb_property('lmfdb_jinvariant_objects_parquet_88', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_88', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_89', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_89', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_89', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_89', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_89', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_89', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_89', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_89', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_89', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_89', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_89', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_89', id, '"18e54dc3"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_89', file, '"scripts/classical_modular_forms/populate_trace_hash_Lfunctions.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_89', line, '11').
lmfdb_property('lmfdb_jinvariant_objects_parquet_89', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_89', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_90', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_90', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_90', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_90', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_90', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_90', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_90', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_90', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_90', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_90', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_90', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_90', id, '"fb5eba2a"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_90', file, '"scripts/classical_modular_forms/populate_trace_hash_Lfunctions.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_90', line, '16').
lmfdb_property('lmfdb_jinvariant_objects_parquet_90', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_90', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_91', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_91', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_91', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_91', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_91', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_91', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_91', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_91', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_91', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_91', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_91', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_91', id, '"fb5eba2a"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_91', file, '"scripts/classical_modular_forms/populate_trace_hash_Lfunctions.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_91', line, '16').
lmfdb_property('lmfdb_jinvariant_objects_parquet_91', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_91', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_92', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_92', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_92', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_92', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_92', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_92', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_92', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_92', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_92', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_92', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_92', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_92', id, '"31a595fa"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_92', file, '"scripts/classical_modular_forms/populate_trace_hash_Lfunctions.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_92', line, '25').
lmfdb_property('lmfdb_jinvariant_objects_parquet_92', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_92', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_93', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_93', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_93', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_93', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_93', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_93', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_93', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_93', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_93', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_93', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_93', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_93', id, '"1dad4beb"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_93', file, '"scripts/classical_modular_forms/populate_trace_hash_Lfunctions.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_93', line, '28').
lmfdb_property('lmfdb_jinvariant_objects_parquet_93', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_93', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_94', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_94', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_94', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_94', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_94', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_94', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_94', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_94', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_94', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_94', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_94', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_94', id, '"1a160225"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_94', file, '"scripts/classical_modular_forms/populate_trace_hash_Lfunctions.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_94', line, '34').
lmfdb_property('lmfdb_jinvariant_objects_parquet_94', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_94', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_95', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_95', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_95', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_95', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_95', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_95', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_95', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_95', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_95', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_95', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_95', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_95', id, '"b7d4a1b0"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_95', file, '"scripts/classical_modular_forms/populate_embeddings_mf_hecke_cc.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_95', line, '7').
lmfdb_property('lmfdb_jinvariant_objects_parquet_95', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_95', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_96', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_96', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_96', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_96', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_96', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_96', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_96', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_96', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_96', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_96', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_96', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_96', id, '"2553f38c"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_96', file, '"scripts/classical_modular_forms/populate_embeddings_mf_hecke_cc.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_96', line, '17').
lmfdb_property('lmfdb_jinvariant_objects_parquet_96', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_96', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_97', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_97', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_97', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_97', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_97', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_97', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_97', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_97', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_97', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_97', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_97', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_97', id, '"afb30e64"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_97', file, '"scripts/classical_modular_forms/populate_embeddings_mf_hecke_cc.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_97', line, '11').
lmfdb_property('lmfdb_jinvariant_objects_parquet_97', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_97', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_98', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_98', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_98', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_98', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_98', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_98', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_98', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_98', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_98', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_98', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_98', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_98', id, '"52e607fc"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_98', file, '"scripts/classical_modular_forms/populate_embeddings_mf_hecke_cc.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_98', line, '31').
lmfdb_property('lmfdb_jinvariant_objects_parquet_98', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_98', complexity, '1.0').
lmfdb_object('lmfdb_jinvariant_objects_parquet_99', parquet_row, []).
lmfdb_property('lmfdb_jinvariant_objects_parquet_99', number, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_99', j_invariant, '55').
lmfdb_property('lmfdb_jinvariant_objects_parquet_99', class_name, '"Class2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_99', class_type, '"constant"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_99', operator_symbol, '"T_2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_99', operator_formula, '"(x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_99', function_name, 'null').
lmfdb_property('lmfdb_jinvariant_objects_parquet_99', function_signature, '"f_2(x) = (x * 2) mod 71"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_99', module_name, '"Module2"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_99', module_rank, '3').
lmfdb_property('lmfdb_jinvariant_objects_parquet_99', id, '"99f9858d"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_99', file, '"scripts/classical_modular_forms/populate_embeddings_mf_hecke_cc.py"').
lmfdb_property('lmfdb_jinvariant_objects_parquet_99', line, '32').
lmfdb_property('lmfdb_jinvariant_objects_parquet_99', shard, '2').
lmfdb_property('lmfdb_jinvariant_objects_parquet_99', complexity, '1.0').

% JSON: lmfdb_extracted_data.json
lmfdb_file('/home/mdupont/experiments/monster/temp/ci_artifacts/lmfdb_extracted_data.json', json, 24).

% JSON: lmfdb_rust_conversion.json
lmfdb_file('/home/mdupont/experiments/monster/temp/ci_artifacts/lmfdb_rust_conversion.json', json, 11).
lmfdb_property('lmfdb_rust_conversion_json', conversion_rate, 0.04).
lmfdb_property('lmfdb_rust_conversion_json', converted, 20).
lmfdb_property('lmfdb_rust_conversion_json', total_functions, 500).

% JSON: lmfdb_core_model.json
lmfdb_file('/home/mdupont/experiments/monster/temp/ci_artifacts/lmfdb_core_model.json', json, 31).
lmfdb_property('lmfdb_core_model_json', shards, 70).
lmfdb_property('lmfdb_core_model_json', total_items, 7115).

% JSON: lmfdb_ast_analysis.json
lmfdb_file('/home/mdupont/experiments/monster/temp/ci_artifacts/lmfdb_ast_analysis.json', json, 19).

% JSON: lmfdb_qa_dataset.json
lmfdb_file('/home/mdupont/experiments/monster/temp/ci_artifacts/lmfdb_qa_dataset.json', json, 62).
lmfdb_object('lmfdb_qa_dataset_json_0', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_0', answer, '47').
lmfdb_property('lmfdb_qa_dataset_json_0', question, 'What is the j-invariant of number 71?').
lmfdb_property('lmfdb_qa_dataset_json_0', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_1', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_1', answer, '2').
lmfdb_property('lmfdb_qa_dataset_json_1', question, 'What is the module rank of number 71?').
lmfdb_property('lmfdb_qa_dataset_json_1', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_2', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_2', answer, 'T_71').
lmfdb_property('lmfdb_qa_dataset_json_2', question, 'What operator corresponds to number 71?').
lmfdb_property('lmfdb_qa_dataset_json_2', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_3', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_3', answer, '47').
lmfdb_property('lmfdb_qa_dataset_json_3', question, 'What is the j-invariant of number 71?').
lmfdb_property('lmfdb_qa_dataset_json_3', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_4', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_4', answer, '2').
lmfdb_property('lmfdb_qa_dataset_json_4', question, 'What is the module rank of number 71?').
lmfdb_property('lmfdb_qa_dataset_json_4', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_5', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_5', answer, 'T_71').
lmfdb_property('lmfdb_qa_dataset_json_5', question, 'What operator corresponds to number 71?').
lmfdb_property('lmfdb_qa_dataset_json_5', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_6', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_6', answer, '47').
lmfdb_property('lmfdb_qa_dataset_json_6', question, 'What is the j-invariant of number 71?').
lmfdb_property('lmfdb_qa_dataset_json_6', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_7', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_7', answer, '2').
lmfdb_property('lmfdb_qa_dataset_json_7', question, 'What is the module rank of number 71?').
lmfdb_property('lmfdb_qa_dataset_json_7', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_8', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_8', answer, 'T_71').
lmfdb_property('lmfdb_qa_dataset_json_8', question, 'What operator corresponds to number 71?').
lmfdb_property('lmfdb_qa_dataset_json_8', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_9', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_9', answer, '47').
lmfdb_property('lmfdb_qa_dataset_json_9', question, 'What is the j-invariant of number 71?').
lmfdb_property('lmfdb_qa_dataset_json_9', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_10', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_10', answer, '2').
lmfdb_property('lmfdb_qa_dataset_json_10', question, 'What is the module rank of number 71?').
lmfdb_property('lmfdb_qa_dataset_json_10', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_11', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_11', answer, 'T_71').
lmfdb_property('lmfdb_qa_dataset_json_11', question, 'What operator corresponds to number 71?').
lmfdb_property('lmfdb_qa_dataset_json_11', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_12', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_12', answer, '48').
lmfdb_property('lmfdb_qa_dataset_json_12', question, 'What is the j-invariant of number 1?').
lmfdb_property('lmfdb_qa_dataset_json_12', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_13', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_13', answer, '2').
lmfdb_property('lmfdb_qa_dataset_json_13', question, 'What is the module rank of number 1?').
lmfdb_property('lmfdb_qa_dataset_json_13', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_14', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_14', answer, 'T_1').
lmfdb_property('lmfdb_qa_dataset_json_14', question, 'What operator corresponds to number 1?').
lmfdb_property('lmfdb_qa_dataset_json_14', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_15', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_15', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_15', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_15', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_16', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_16', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_16', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_16', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_17', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_17', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_17', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_17', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_18', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_18', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_18', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_18', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_19', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_19', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_19', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_19', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_20', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_20', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_20', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_20', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_21', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_21', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_21', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_21', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_22', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_22', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_22', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_22', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_23', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_23', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_23', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_23', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_24', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_24', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_24', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_24', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_25', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_25', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_25', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_25', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_26', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_26', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_26', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_26', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_27', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_27', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_27', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_27', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_28', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_28', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_28', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_28', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_29', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_29', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_29', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_29', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_30', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_30', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_30', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_30', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_31', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_31', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_31', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_31', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_32', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_32', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_32', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_32', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_33', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_33', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_33', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_33', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_34', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_34', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_34', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_34', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_35', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_35', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_35', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_35', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_36', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_36', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_36', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_36', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_37', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_37', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_37', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_37', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_38', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_38', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_38', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_38', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_39', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_39', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_39', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_39', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_40', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_40', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_40', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_40', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_41', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_41', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_41', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_41', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_42', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_42', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_42', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_42', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_43', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_43', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_43', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_43', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_44', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_44', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_44', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_44', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_45', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_45', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_45', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_45', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_46', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_46', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_46', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_46', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_47', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_47', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_47', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_47', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_48', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_48', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_48', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_48', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_49', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_49', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_49', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_49', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_50', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_50', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_50', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_50', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_51', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_51', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_51', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_51', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_52', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_52', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_52', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_52', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_53', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_53', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_53', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_53', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_54', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_54', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_54', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_54', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_55', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_55', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_55', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_55', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_56', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_56', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_56', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_56', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_57', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_57', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_57', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_57', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_58', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_58', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_58', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_58', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_59', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_59', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_59', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_59', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_60', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_60', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_60', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_60', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_61', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_61', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_61', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_61', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_62', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_62', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_62', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_62', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_63', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_63', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_63', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_63', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_64', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_64', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_64', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_64', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_65', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_65', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_65', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_65', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_66', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_66', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_66', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_66', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_67', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_67', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_67', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_67', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_68', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_68', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_68', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_68', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_69', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_69', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_69', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_69', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_70', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_70', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_70', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_70', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_71', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_71', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_71', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_71', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_72', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_72', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_72', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_72', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_73', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_73', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_73', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_73', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_74', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_74', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_74', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_74', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_75', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_75', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_75', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_75', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_76', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_76', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_76', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_76', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_77', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_77', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_77', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_77', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_78', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_78', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_78', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_78', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_79', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_79', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_79', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_79', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_80', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_80', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_80', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_80', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_81', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_81', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_81', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_81', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_82', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_82', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_82', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_82', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_83', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_83', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_83', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_83', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_84', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_84', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_84', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_84', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_85', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_85', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_85', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_85', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_86', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_86', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_86', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_86', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_87', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_87', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_87', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_87', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_88', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_88', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_88', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_88', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_89', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_89', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_89', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_89', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_90', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_90', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_90', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_90', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_91', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_91', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_91', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_91', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_92', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_92', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_92', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_92', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_93', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_93', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_93', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_93', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_94', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_94', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_94', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_94', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_95', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_95', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_95', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_95', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_96', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_96', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_96', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_96', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_97', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_97', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_97', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_97', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_98', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_98', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_98', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_98', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_99', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_99', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_99', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_99', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_100', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_100', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_100', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_100', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_101', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_101', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_101', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_101', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_102', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_102', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_102', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_102', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_103', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_103', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_103', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_103', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_104', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_104', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_104', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_104', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_105', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_105', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_105', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_105', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_106', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_106', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_106', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_106', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_107', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_107', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_107', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_107', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_108', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_108', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_108', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_108', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_109', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_109', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_109', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_109', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_110', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_110', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_110', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_110', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_111', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_111', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_111', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_111', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_112', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_112', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_112', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_112', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_113', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_113', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_113', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_113', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_114', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_114', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_114', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_114', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_115', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_115', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_115', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_115', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_116', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_116', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_116', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_116', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_117', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_117', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_117', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_117', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_118', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_118', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_118', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_118', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_119', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_119', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_119', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_119', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_120', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_120', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_120', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_120', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_121', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_121', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_121', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_121', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_122', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_122', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_122', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_122', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_123', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_123', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_123', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_123', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_124', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_124', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_124', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_124', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_125', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_125', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_125', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_125', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_126', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_126', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_126', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_126', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_127', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_127', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_127', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_127', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_128', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_128', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_128', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_128', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_129', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_129', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_129', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_129', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_130', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_130', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_130', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_130', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_131', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_131', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_131', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_131', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_132', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_132', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_132', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_132', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_133', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_133', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_133', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_133', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_134', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_134', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_134', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_134', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_135', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_135', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_135', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_135', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_136', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_136', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_136', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_136', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_137', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_137', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_137', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_137', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_138', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_138', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_138', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_138', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_139', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_139', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_139', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_139', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_140', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_140', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_140', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_140', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_141', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_141', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_141', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_141', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_142', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_142', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_142', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_142', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_143', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_143', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_143', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_143', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_144', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_144', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_144', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_144', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_145', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_145', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_145', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_145', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_146', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_146', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_146', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_146', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_147', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_147', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_147', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_147', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_148', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_148', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_148', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_148', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_149', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_149', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_149', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_149', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_150', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_150', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_150', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_150', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_151', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_151', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_151', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_151', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_152', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_152', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_152', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_152', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_153', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_153', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_153', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_153', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_154', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_154', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_154', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_154', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_155', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_155', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_155', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_155', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_156', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_156', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_156', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_156', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_157', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_157', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_157', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_157', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_158', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_158', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_158', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_158', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_159', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_159', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_159', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_159', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_160', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_160', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_160', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_160', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_161', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_161', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_161', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_161', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_162', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_162', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_162', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_162', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_163', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_163', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_163', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_163', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_164', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_164', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_164', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_164', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_165', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_165', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_165', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_165', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_166', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_166', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_166', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_166', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_167', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_167', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_167', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_167', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_168', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_168', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_168', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_168', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_169', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_169', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_169', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_169', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_170', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_170', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_170', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_170', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_171', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_171', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_171', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_171', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_172', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_172', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_172', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_172', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_173', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_173', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_173', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_173', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_174', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_174', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_174', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_174', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_175', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_175', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_175', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_175', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_176', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_176', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_176', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_176', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_177', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_177', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_177', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_177', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_178', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_178', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_178', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_178', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_179', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_179', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_179', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_179', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_180', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_180', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_180', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_180', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_181', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_181', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_181', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_181', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_182', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_182', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_182', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_182', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_183', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_183', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_183', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_183', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_184', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_184', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_184', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_184', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_185', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_185', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_185', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_185', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_186', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_186', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_186', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_186', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_187', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_187', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_187', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_187', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_188', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_188', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_188', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_188', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_189', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_189', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_189', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_189', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_190', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_190', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_190', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_190', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_191', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_191', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_191', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_191', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_192', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_192', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_192', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_192', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_193', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_193', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_193', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_193', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_194', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_194', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_194', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_194', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_195', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_195', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_195', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_195', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_196', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_196', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_196', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_196', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_197', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_197', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_197', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_197', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_198', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_198', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_198', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_198', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_199', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_199', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_199', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_199', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_200', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_200', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_200', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_200', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_201', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_201', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_201', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_201', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_202', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_202', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_202', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_202', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_203', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_203', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_203', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_203', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_204', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_204', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_204', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_204', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_205', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_205', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_205', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_205', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_206', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_206', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_206', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_206', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_207', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_207', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_207', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_207', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_208', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_208', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_208', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_208', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_209', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_209', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_209', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_209', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_210', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_210', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_210', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_210', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_211', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_211', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_211', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_211', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_212', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_212', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_212', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_212', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_213', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_213', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_213', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_213', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_214', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_214', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_214', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_214', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_215', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_215', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_215', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_215', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_216', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_216', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_216', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_216', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_217', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_217', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_217', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_217', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_218', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_218', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_218', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_218', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_219', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_219', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_219', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_219', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_220', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_220', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_220', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_220', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_221', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_221', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_221', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_221', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_222', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_222', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_222', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_222', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_223', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_223', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_223', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_223', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_224', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_224', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_224', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_224', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_225', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_225', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_225', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_225', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_226', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_226', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_226', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_226', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_227', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_227', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_227', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_227', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_228', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_228', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_228', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_228', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_229', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_229', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_229', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_229', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_230', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_230', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_230', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_230', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_231', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_231', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_231', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_231', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_232', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_232', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_232', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_232', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_233', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_233', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_233', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_233', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_234', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_234', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_234', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_234', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_235', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_235', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_235', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_235', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_236', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_236', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_236', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_236', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_237', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_237', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_237', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_237', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_238', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_238', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_238', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_238', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_239', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_239', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_239', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_239', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_240', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_240', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_240', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_240', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_241', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_241', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_241', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_241', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_242', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_242', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_242', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_242', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_243', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_243', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_243', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_243', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_244', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_244', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_244', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_244', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_245', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_245', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_245', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_245', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_246', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_246', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_246', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_246', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_247', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_247', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_247', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_247', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_248', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_248', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_248', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_248', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_249', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_249', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_249', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_249', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_250', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_250', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_250', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_250', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_251', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_251', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_251', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_251', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_252', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_252', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_252', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_252', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_253', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_253', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_253', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_253', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_254', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_254', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_254', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_254', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_255', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_255', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_255', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_255', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_256', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_256', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_256', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_256', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_257', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_257', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_257', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_257', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_258', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_258', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_258', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_258', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_259', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_259', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_259', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_259', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_260', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_260', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_260', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_260', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_261', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_261', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_261', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_261', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_262', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_262', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_262', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_262', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_263', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_263', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_263', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_263', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_264', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_264', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_264', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_264', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_265', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_265', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_265', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_265', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_266', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_266', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_266', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_266', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_267', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_267', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_267', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_267', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_268', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_268', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_268', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_268', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_269', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_269', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_269', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_269', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_270', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_270', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_270', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_270', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_271', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_271', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_271', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_271', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_272', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_272', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_272', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_272', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_273', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_273', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_273', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_273', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_274', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_274', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_274', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_274', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_275', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_275', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_275', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_275', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_276', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_276', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_276', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_276', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_277', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_277', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_277', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_277', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_278', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_278', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_278', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_278', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_279', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_279', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_279', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_279', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_280', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_280', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_280', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_280', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_281', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_281', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_281', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_281', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_282', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_282', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_282', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_282', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_283', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_283', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_283', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_283', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_284', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_284', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_284', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_284', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_285', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_285', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_285', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_285', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_286', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_286', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_286', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_286', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_287', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_287', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_287', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_287', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_288', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_288', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_288', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_288', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_289', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_289', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_289', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_289', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_290', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_290', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_290', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_290', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_291', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_291', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_291', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_291', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_292', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_292', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_292', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_292', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_293', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_293', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_293', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_293', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_294', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_294', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_294', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_294', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_295', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_295', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_295', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_295', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_296', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_296', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_296', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_296', type, 'operator').
lmfdb_object('lmfdb_qa_dataset_json_297', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_297', answer, '55').
lmfdb_property('lmfdb_qa_dataset_json_297', question, 'What is the j-invariant of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_297', type, 'j_invariant').
lmfdb_object('lmfdb_qa_dataset_json_298', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_298', answer, '3').
lmfdb_property('lmfdb_qa_dataset_json_298', question, 'What is the module rank of number 2?').
lmfdb_property('lmfdb_qa_dataset_json_298', type, 'module_rank').
lmfdb_object('lmfdb_qa_dataset_json_299', json_object, []).
lmfdb_property('lmfdb_qa_dataset_json_299', answer, 'T_2').
lmfdb_property('lmfdb_qa_dataset_json_299', question, 'What operator corresponds to number 2?').
lmfdb_property('lmfdb_qa_dataset_json_299', type, 'operator').

% JSON: lmfdb_71_decomposition.json
lmfdb_file('/home/mdupont/experiments/monster/temp/ci_artifacts/lmfdb_71_decomposition.json', json, 58).
lmfdb_property('lmfdb_71_decomposition_json', coverage_percent, 6.81464333847402e-8).
lmfdb_property('lmfdb_71_decomposition_json', total_actual, 6198).
lmfdb_property('lmfdb_71_decomposition_json', total_theoretical, 9095120158391).

% Statistics
lmfdb_zone(0, 5).
lmfdb_zone(1, 6).
lmfdb_zone(2, 2).
lmfdb_zone(3, 5).
lmfdb_zone(4, 5).
lmfdb_zone(5, 7).
lmfdb_zone(6, 3).
lmfdb_zone(7, 4).
lmfdb_zone(8, 4).
lmfdb_zone(9, 4).
lmfdb_zone(10, 5).
lmfdb_zone(11, 4).
lmfdb_zone(12, 3).
lmfdb_zone(14, 5).
lmfdb_zone(15, 4).
lmfdb_zone(16, 4).
lmfdb_zone(17, 6).
lmfdb_zone(18, 5).
lmfdb_zone(19, 6).
lmfdb_zone(20, 4).
lmfdb_zone(21, 3).
lmfdb_zone(22, 3).
lmfdb_zone(23, 1).
lmfdb_zone(24, 4).
lmfdb_zone(25, 5).
lmfdb_zone(26, 2).
lmfdb_zone(27, 3).
lmfdb_zone(28, 2).
lmfdb_zone(29, 1).
lmfdb_zone(30, 2).
lmfdb_zone(31, 4).
lmfdb_zone(32, 3).
lmfdb_zone(33, 5).
lmfdb_zone(34, 6).
lmfdb_zone(35, 5).
lmfdb_zone(36, 4).
lmfdb_zone(37, 5).
lmfdb_zone(38, 3).
lmfdb_zone(39, 2).
lmfdb_zone(40, 5).
lmfdb_zone(41, 2).
lmfdb_zone(42, 1).
lmfdb_zone(43, 2).
lmfdb_zone(44, 3).
lmfdb_zone(45, 3).
lmfdb_zone(46, 6).
lmfdb_zone(47, 4).
lmfdb_zone(48, 4).
lmfdb_zone(49, 4).
lmfdb_zone(50, 7).
lmfdb_zone(51, 5).
lmfdb_zone(52, 2).
lmfdb_zone(53, 3).
lmfdb_zone(54, 5).
lmfdb_zone(55, 3).
lmfdb_zone(56, 3).
lmfdb_zone(57, 4).
lmfdb_zone(58, 5).
lmfdb_zone(59, 6).
lmfdb_zone(60, 2).
lmfdb_zone(61, 6).
lmfdb_zone(62, 4).
lmfdb_zone(63, 4).
lmfdb_zone(64, 5).
lmfdb_zone(65, 3).
lmfdb_zone(66, 1).
lmfdb_zone(67, 4).
lmfdb_zone(68, 6).
lmfdb_zone(69, 3).
lmfdb_zone(70, 3).

% Total files: 272
