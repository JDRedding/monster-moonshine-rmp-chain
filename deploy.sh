#!/usr/bin/env bash
# Deploy Nebuchadnezzar to localhost nginx

set -e

DEPLOY_DIR="/var/www/nebuchadnezzar"
MONSTER_DIR="/home/mdupont/experiments/monster"

echo "🚀 Deploying Nebuchadnezzar Matrix Rain..."

# Create deployment directory
sudo mkdir -p "$DEPLOY_DIR"
sudo chown $USER:$USER "$DEPLOY_DIR"

# Copy HTML
echo "📄 Copying HTML..."
cp "$MONSTER_DIR/nebuchadnezzar.html" "$DEPLOY_DIR/index.html"

# Copy documentation
echo "📚 Copying documentation..."
cp "$MONSTER_DIR/NEBUCHADNEZZAR.md" "$DEPLOY_DIR/"
cp "$MONSTER_DIR/PROOF_COMPLETE.md" "$DEPLOY_DIR/"
cp "$MONSTER_DIR/FRACTRAN_MONSTER_BASE.md" "$DEPLOY_DIR/"
cp "$MONSTER_DIR/MONSTER_71_LAYER_LATTICE.md" "$DEPLOY_DIR/"

# Copy compressed data
echo "📦 Copying compressed perf data..."
mkdir -p "$DEPLOY_DIR/data"
if [ -d "$MONSTER_DIR/compressed_perf" ]; then
    cp "$MONSTER_DIR/compressed_perf"/*.fractran "$DEPLOY_DIR/data/" 2>/dev/null || true
    cp "$MONSTER_DIR/compressed_perf"/*.log "$DEPLOY_DIR/data/" 2>/dev/null || true
fi

# Create nginx config
echo "⚙️  Creating nginx config..."
sudo tee /etc/nginx/sites-available/nebuchadnezzar > /dev/null <<EOF
server {
    listen 8042;
    server_name localhost;
    
    root $DEPLOY_DIR;
    index index.html;
    
    location / {
        try_files \$uri \$uri/ =404;
        add_header Cache-Control "no-cache";
    }
    
    location /data/ {
        autoindex on;
        add_header Content-Type "text/plain; charset=utf-8";
    }
}
EOF

# Enable site
sudo ln -sf /etc/nginx/sites-available/nebuchadnezzar /etc/nginx/sites-enabled/

# Test nginx config
echo "🔍 Testing nginx config..."
sudo nginx -t

# Reload nginx
echo "🔄 Reloading nginx..."
sudo systemctl reload nginx || sudo service nginx reload

echo ""
echo "✅ Deployment complete!"
echo ""
echo "🌐 Access the Nebuchadnezzar at:"
echo "   http://localhost:8042"
echo ""
echo "📊 Data files at:"
echo "   http://localhost:8042/data/"
echo ""
echo "🚀 The Matrix awaits..."
