#!/bin/bash

# GitHub Pages Resume Deployment Script
# This script helps you deploy your resume to GitHub Pages

echo "🚀 GitHub Pages Resume Deployment"
echo "=================================="
echo ""

# Check if we're in the right directory
if [ ! -f "index.html" ]; then
    echo "❌ Error: index.html not found!"
    echo "Please run this script from /Volumes/Prado/Documents/Resume"
    exit 1
fi

echo "✅ Found index.html"
echo ""

# Check if Git is initialized
if [ ! -d ".git" ]; then
    echo "📦 Initializing Git repository..."
    git init
    git branch -M main
    echo "✅ Git initialized"
else
    echo "✅ Git repository already initialized"
fi

echo ""
echo "📝 Please enter your GitHub username:"
read -p "Username: " github_username

if [ -z "$github_username" ]; then
    echo "❌ Error: GitHub username cannot be empty"
    exit 1
fi

echo ""
echo "🔗 Repository options:"
echo "1. Personal site: ${github_username}.github.io (Recommended)"
echo "2. Project site: ${github_username}.github.io/resume"
echo ""
read -p "Choose option (1 or 2): " repo_option

if [ "$repo_option" = "1" ]; then
    repo_name="${github_username}.github.io"
    site_url="https://${github_username}.github.io"
elif [ "$repo_option" = "2" ]; then
    repo_name="resume"
    site_url="https://${github_username}.github.io/resume"
else
    echo "❌ Invalid option"
    exit 1
fi

echo ""
echo "📋 Configuration:"
echo "  Repository: ${repo_name}"
echo "  URL: ${site_url}"
echo ""

# Check if remote already exists
if git remote | grep -q "origin"; then
    echo "⚠️  Remote 'origin' already exists"
    read -p "Do you want to update it? (y/n): " update_remote
    if [ "$update_remote" = "y" ]; then
        git remote remove origin
        git remote add origin "https://github.com/${github_username}/${repo_name}.git"
        echo "✅ Remote updated"
    fi
else
    git remote add origin "https://github.com/${github_username}/${repo_name}.git"
    echo "✅ Remote added"
fi

echo ""
echo "📦 Staging files..."
git add .

echo "✅ Files staged"
echo ""

read -p "📝 Commit message (press Enter for default): " commit_msg
if [ -z "$commit_msg" ]; then
    commit_msg="Initial commit: Professional resume website"
fi

echo "💾 Creating commit..."
git commit -m "$commit_msg"

echo "✅ Commit created"
echo ""

echo "🌐 Custom domain setup:"
echo "Do you want to use a custom domain (resume.spikey.tech)?"
read -p "(y/n): " use_custom_domain

if [ "$use_custom_domain" != "y" ]; then
    if [ -f "CNAME" ]; then
        echo "🗑️  Removing CNAME file..."
        rm CNAME
        git add CNAME
        git commit -m "Remove CNAME file - not using custom domain"
    fi
fi

echo ""
echo "🚀 Ready to push to GitHub!"
echo ""
echo "⚠️  IMPORTANT: Before pushing, make sure you have:"
echo "  1. Created the repository '${repo_name}' on GitHub"
echo "  2. Set up authentication (Personal Access Token or SSH)"
echo ""
read -p "Press Enter to push, or Ctrl+C to cancel..."

echo "📤 Pushing to GitHub..."
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Successfully pushed to GitHub!"
    echo ""
    echo "🎉 Next steps:"
    echo "  1. Go to: https://github.com/${github_username}/${repo_name}/settings/pages"
    echo "  2. Under 'Build and deployment':"
    echo "     - Source: Deploy from a branch"
    echo "     - Branch: main"
    echo "     - Folder: / (root)"
    echo "  3. Click Save"
    echo "  4. Wait 1-2 minutes for deployment"
    echo "  5. Visit: ${site_url}"
    echo ""
    
    if [ "$use_custom_domain" = "y" ]; then
        echo "📝 Custom Domain Setup:"
        echo "  1. Add CNAME record at your DNS provider:"
        echo "     Type: CNAME"
        echo "     Name: resume"
        echo "     Value: ${github_username}.github.io"
        echo "  2. In GitHub Pages settings, add custom domain: resume.spikey.tech"
        echo "  3. Enable 'Enforce HTTPS'"
        echo ""
    fi
    
    echo "🎊 Deployment complete!"
else
    echo ""
    echo "❌ Push failed!"
    echo ""
    echo "Common issues:"
    echo "  1. Repository doesn't exist - create it at: https://github.com/new"
    echo "  2. Authentication failed - use Personal Access Token"
    echo "  3. Remote URL incorrect - check repository name"
    echo ""
    echo "For help, see: https://docs.github.com/en/pages"
fi
