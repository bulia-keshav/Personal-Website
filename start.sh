#!/bin/bash

# Portfolio Quick Start Script
# This script helps you quickly preview and deploy your portfolio

echo "🎨 Keshav's Portfolio - Quick Start"
echo "===================================="
echo ""

# Function to check if command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Menu
echo "What would you like to do?"
echo ""
echo "1) Preview locally (open in browser)"
echo "2) Deploy to GitHub"
echo "3) Deploy to Netlify (via CLI)"
echo "4) Just start local server"
echo "5) Exit"
echo ""
read -p "Enter your choice (1-5): " choice

case $choice in
    1)
        echo ""
        echo "🚀 Starting local server..."
        if command_exists python3; then
            echo "Opening http://localhost:8000 in your browser..."
            python3 -m http.server 8000 &
            SERVER_PID=$!
            sleep 2
            
            # Open browser
            if [[ "$OSTYPE" == "darwin"* ]]; then
                open http://localhost:8000
            elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
                xdg-open http://localhost:8000
            fi
            
            echo ""
            echo "✅ Server running! Press Ctrl+C to stop."
            wait $SERVER_PID
        else
            echo "❌ Python 3 not found. Please install Python 3."
        fi
        ;;
    
    2)
        echo ""
        echo "📦 Deploying to GitHub..."
        echo ""
        read -p "Enter your GitHub username: " username
        read -p "Enter repository name (e.g., portfolio): " repo
        
        if [ ! -d .git ]; then
            git init
            git add .
            git commit -m "Initial portfolio commit"
        fi
        
        git remote add origin "https://github.com/$username/$repo.git" 2>/dev/null || true
        git branch -M main
        git push -u origin main
        
        echo ""
        echo "✅ Pushed to GitHub!"
        echo "📌 Now enable GitHub Pages:"
        echo "   1. Go to https://github.com/$username/$repo/settings/pages"
        echo "   2. Select 'main' branch and '/' (root) folder"
        echo "   3. Click Save"
        echo ""
        echo "Your site will be at: https://$username.github.io/$repo/"
        ;;
    
    3)
        echo ""
        if command_exists netlify; then
            echo "🚀 Deploying to Netlify..."
            netlify deploy --prod
        else
            echo "📦 Netlify CLI not found. Installing..."
            echo "Run: npm install -g netlify-cli"
            echo "Then run this script again."
        fi
        ;;
    
    4)
        echo ""
        echo "🚀 Starting local server..."
        if command_exists python3; then
            python3 -m http.server 8000
        else
            echo "❌ Python 3 not found. Please install Python 3."
        fi
        ;;
    
    5)
        echo "👋 Goodbye!"
        exit 0
        ;;
    
    *)
        echo "❌ Invalid choice. Please run the script again."
        exit 1
        ;;
esac
