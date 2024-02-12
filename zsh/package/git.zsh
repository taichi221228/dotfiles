#!/usr/bin/env zsh

alias g='git'
alias ga='git add'
alias gaa='git add -A'
alias gb='git branch'
alias gbd='git branch -d'
alias gc='git commit'
alias gca='git commit --amend'
alias gch='git checkout'
alias gd='git diff'
alias gdc='git diff --cached'
alias gf='git fetch --all'
alias gm='git merge'
alias gma='git merge --abort'
alias gp='git push'
alias gpo='git push origin'
alias gpoc='git push origin $(git rev-parse --abbrev-ref HEAD)'
alias gpf='git push --force'
alias gpfo='git push --force origin'
alias gpfoc='git push --force origin $(git rev-parse --abbrev-ref HEAD)'
alias gpl='git pull'
alias gr='git rebase'
alias gra='git rebase --abort'
alias gre='git remote'
alias grl="git reflog"
alias grs='git reset'
alias grsh='git reset --hard'
alias gs='git status'
alias gl='git log'

function grea() {
  git remote add origin https://github.com/taichi221228/"$1"
}