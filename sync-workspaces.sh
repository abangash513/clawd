#!/bin/bash
# Sync script for Clawbot to execute
# This syncs Windows workspace to WSL

echo '=== Task 1: Sync .kiro/specs from Windows to WSL ==='
mkdir -p ~/clawd/.kiro/specs
cp -rv /mnt/c/AWSKiro/.kiro/specs/* ~/clawd/.kiro/specs/
echo 'Specs synced!'
ls -la ~/clawd/.kiro/specs/

echo ''
echo '=== Task 2: Initialize git in Windows workspace ==='
cd /mnt/c/AWSKiro

# Check if already initialized
if [ -d .git ]; then
    echo 'Git already initialized'
    git status
else
    git init
    
    # Create .gitignore
    cat > .gitignore << 'GITIGNORE'
# Python
__pycache__/
*.py[cod]
*.class
*.so
.Python
venv/
env/
*.egg-info/

# Environment
.env
*.env.local

# IDE
.vscode/
.idea/

# OS
.DS_Store
Thumbs.db

# Logs
*.log

# Temporary files
*.tmp
*.bak
*.swp
*.dtmp

# Large archives
*.tar.gz
*.zip

# Kiro cache
.kiro/cache/
GITIGNORE

    git add .
    git commit -m 'Initial commit: Windows workspace with Kiro specs'
    echo 'Git initialized and committed!'
fi

git log --oneline -5

echo ''
echo '=== Task 3: Compare cloudoptima-ai projects ==='
echo 'Files only in Windows:'
diff -r ~/clawd/03-Projects/cloudoptima-ai /mnt/c/AWSKiro/03-Projects/cloudoptima-ai --brief | grep 'Only in /mnt/c' | head -10

echo ''
echo 'Files only in WSL:'
diff -r ~/clawd/03-Projects/cloudoptima-ai /mnt/c/AWSKiro/03-Projects/cloudoptima-ai --brief | grep 'Only in /home' | head -10

echo ''
echo '=== SYNC COMPLETE ==='
echo 'Summary:'
echo '- .kiro/specs synced to WSL'
echo '- Windows workspace git-initialized'
echo '- Project differences identified'
