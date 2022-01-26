# Some good standards, which are not used if the user
# creates his/her own .bashrc/.bash_profile

alias ls='ls -F --color=auto --show-control-chars'
alias ll='ls -l'
alias gf='git fetch --all'
alias ga='git add .'
alias gc='git commit -m'
alias gp='git push'
alias gpu='git push --set-upstream origin'
alias gpl='git pull'
alias co='git checkout'
alias cob='git checkout -b'
alias stash='git stash'
alias pop='git stash pop'
alias s='git status'
alias last='git log -1 HEAD --stat'
alias tree='git log --pretty=format:\"%C(magenta)%h%Creset -%C(red)%d%Creset %s %C(dim green)(%cr) [%an]\" --abbrev-commit -30'

case "$TERM" in
xterm*)
	# The following programs are known to require a Win32 Console
	# for interactive usage, therefore let's launch them through winpty
	# when run inside `mintty`.
	for name in node ipython php php5 psql python2.7
	do
		case "$(type -p "$name".exe 2>/dev/null)" in
		''|/usr/bin/*) continue;;
		esac
		alias $name="winpty $name.exe"
	done
	;;
esac
