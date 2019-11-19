# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
BROWSER=/usr/bin/chromium
EDITOR=/usr/bin/nano

export CLASSPATH="$CLASSPATH:/usr/share/java/junit/junit-4.12.jar:/usr/share/java/junit/hamcrest-core-1.3.jar:."
export PATH="$PATH:~/.local/bin"

alias "codingame=firefox --new-window www.codingame.com && exit"
alias "mp3=youtube-dl --extract-audio --audio-format mp3"
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

function smaug () {
	echo "$1" | cowsay -f dragon
}

function milk () {
	echo "$1" | cowsay -f milk
}

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[$(tput bold)\]\[\033[38;5;242m\][\[$(tput sgr0)\]\[\033[38;5;167m\]\u@\h\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;159m\]\W\[$(tput sgr0)\]\[\033[38;5;242m\]]\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\]\$(parse_git_branch)\[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;242m\]\\$\[$(tput sgr0)\] "

PATH="/home/oscekh/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/oscekh/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/oscekh/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/oscekh/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/oscekh/perl5"; export PERL_MM_OPT;
