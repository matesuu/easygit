#!/bin/bash

git init && git symbolic-ref HEAD refs/heads/main
git config --global init.defaultBranch main

git remote add origin https://github.com/matesuu/easygit.git
git remote -v

git status
git add . --all

git commit -m "commited to github.com using easygit"

git pull --rebase origin main
git push -u -f origin main

