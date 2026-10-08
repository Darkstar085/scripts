#!/bin/bash
# Copyright (C) 2015 Paranoid Android Project
# Copyright (C) 2018 Sipun Ku Mahanta<sipunkumar85@gmail.com>

# Set global Git user information
git config --global user.email "sipunkumar85@gmail.com"
git config --global user.name "S I P U N"

# Commit and cherry-pick aliases
git config --global alias.c 'commit'
git config --global alias.cp 'cherry-pick'
git config --global alias.cs 'commit -s'
git config --global alias.cps 'cherry-pick -s'

# Status and branch aliases
git config --global alias.s 'status'
git config --global alias.ss 'status --short --branch'
git config --global alias.br 'branch --show-current'
git config --global alias.bv 'branch -vv'

# Sync aliases
git config --global alias.rh '!git fetch origin && git reset --hard origin/$(git branch --show-current)'
git config --global alias.fp 'fetch --prune origin'
git config --global alias.up 'pull --rebase'
git config --global alias.sync '!git fetch origin && git status -sb'

# Diff and history aliases
git config --global alias.d 'diff'
git config --global alias.ds 'diff --cached'
git config --global alias.stat 'diff HEAD --stat'
git config --global alias.lg 'log --oneline --decorate --graph --all'
git config --global alias.last 'log -1 --stat'
git config --global alias.show 'show --stat --oneline HEAD'
git config --global alias.undo 'reset --soft HEAD~1'

echo "Git setup complete."