# Some good standards, which are not used if the user
# creates his/her own .bashrc/.bash_profile

# --show-control-chars: help showing Korean or accented characters
alias ls='ls -F --color=auto --show-control-chars'
alias ll='ls -l'

alias pa='php artisan'
alias model='php artisan make:model'
alias middleware='php artisan make:middleware'
alias cntrl='php artisan make:controller'
alias routes='php artisan route:list'
alias pint='./vendor/bin/pint'

alias ni='npm install'
alias nrd='npm run dev'
alias nrb='npm run build'
alias cr='composer require'

case "$TERM" in
xterm*)
	# The following programs are known to require a Win32 Console
	# for interactive usage, therefore let's launch them through winpty
	# when run inside `mintty`.
	for name in node ipython php php5 psql python2.7 winget
	do
		case "$(type -p "$name".exe 2>/dev/null)" in
		''|/usr/bin/*) continue;;
		esac
		alias $name="winpty $name.exe"
	done
	;;
esac
