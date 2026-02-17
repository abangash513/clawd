# Task for Clawbot - Workspace Sync

## Context
User has asked to sync the Windows workspace (C:\AWSKiro) with the WSL workspace (~/clawd).

## Your Task
Run the sync script that has been prepared for you:

\\ash
cd ~/clawd
./sync-workspaces.sh
\
This script will:
1. Copy all .kiro/specs from Windows to WSL
2. Initialize git in the Windows workspace
3. Show differences between the two cloudoptima-ai projects

## After Running
Update your memory file (~/clawd/memory/2026-02-16.md) with:
- What was synced
- Any issues encountered
- Current status of both workspaces

## Cost Note
This is all local file operations - completely FREE. No cloud resources used.

---
Created by: Kiro (Windows)
For: Clawbot (WSL)
Date: 2026-02-16
