# Query/use custom command for `git`.
zstyle -s ":vcs_info:git:*:-all-" "command" _omz_git_git_cmd
: ${_omz_git_git_cmd:=git}
#
# Functions
#
# The name of the current branch
# Back-compatibility wrapper for when this function was defined here in
# the plugin, before being pulled in to core lib/git.zsh as git_current_branch()
# to fix the core -> git plugin dependency.
function current_branch() {
  git_current_branch
}
#
# Aliases
#
alias ht='cd ~/htdocs'
alias g='git'
alias gst='git status'
alias ga='git add'
alias gaa='git add --all'
alias gcom='git commit -m'
alias gpl='git pull'
alias gp='git push'
alias gpp='git pull && git push'
alias gd='git diff'
alias gc='git checkout'
alias gcm='git checkout master'
alias gcd='git checkout development'
alias gnb='git pull; git checkout -b'
alias gl='git log'
gpsu() {
    git push --set-upstream origin "$(current_branch)"
}
