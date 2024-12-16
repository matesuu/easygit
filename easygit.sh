#!/bin/bash

REMOTE_URL= $1

git init && git symbolic-ref HEAD refs/heads/main
git config --global init.defaultBranch main

git remote add origin $REMOTE_URL
git remote -v

git status
git add . --all

git commit -m "commited to github.com using easygit"

git pull --rebase origin main
git push -u -f origin main

