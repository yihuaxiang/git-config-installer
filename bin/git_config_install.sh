#!/bin/bash

git config --global alias.co checkout


git config --global alias.lg = log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
git config --global alias.st = status
git config --global alias.dft = difftool -t vimdiff
git config --global alias.br = branch
git config --global alias.cm = commit
git config --global alias.ck = checkout
git config --global alias.alias = ! git config --get-regexp ^alias\\. | sed -e s/^alias\\.// -e s/\\ /\\ =\\ /
git config --global alias.cp = cherry-pick
git config --global alias.cr = cherry -v
git config --global alias.pom = pull origin master

git config --global merge.tool = vimdiff
git config --global diff.tool = vimdiff
