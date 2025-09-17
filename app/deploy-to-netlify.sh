#!/bin/bash

echo "🚀 Deploying Bus-Raahi to Netlify..."

# Check if Netlify CLI is installed
if ! command -v netlify &> /dev/null; then
    echo "📦 Installing Netlify CLI..."
    npm install -g netlify-cli
fi

# Login to Netlify (if not already logged in)
echo "🔐 Logging into Netlify..."
netlify login

# Deploy to Netlify
echo "🚀 Deploying to Netlify..."
netlify deploy --prod --dir .

echo "✅ Deployment complete!"
echo "🌐 Your app is now live on Netlify!"
echo "📱 PWA install button will appear automatically in supported browsers"
