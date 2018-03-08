# base-files version 3.7-1

# To pick up the latest recommended .bashrc content,
# look in /etc/defaults/etc/skel/.bashrc

# Modifying /etc/skel/.bashrc directly will prevent
# setup from updating it.

# The copy in your home directory (~/.bashrc) is yours, please
# feel free to customise it to create a shell
# environment to your liking.  If you feel a change
# would be benificial to all, please feel free to send
# a patch to the cygwin mailing list.

# User dependent .bashrc file


# Shell Options
# #############

# See man bash for more options...

# Don't wait for job termination notification
# set -o notify

# Don't use ^D to exit
# set -o ignoreeof

# Use case-insensitive filename globbing
# shopt -s nocaseglob

# Make bash append rather than overwrite the history on disk
# shopt -s histappend

# When changing directory small typos can be ignored by bash
# for example, cd /vr/lgo/apaache would find /var/log/apache
# shopt -s cdspell


# Completion options
# ##################

# These completion tuning parameters change the default behavior of bash_completion:

# Define to access remotely checked-out files over passwordless ssh for CVS
# COMP_CVS_REMOTE=1

# Define to avoid stripping description in --option=description of './configure --help'
# COMP_CONFIGURE_HINTS=1

# Define to avoid flattening internal contents of tar files
# COMP_TAR_INTERNAL_PATHS=1

# If this shell is interactive, turn on programmable completion enhancements.
# Any completions you add in ~/.bash_completion are sourced last.
# case $- in
#   *i*) [[ -f /etc/bash_completion ]] && . /etc/bash_completion ;;
# esac


# History Options
# ###############

# Don't put duplicate lines in the history.
# export HISTCONTROL="ignoredups"

# Ignore some controlling instructions
# export HISTIGNORE="[   ]*:&:bg:fg:exit"

# Whenever displaying the prompt, write the previous line to disk
# export PROMPT_COMMAND="history -a"

# Set the default language, this is simple-chinese
# export LANG="zh_CN.UTF-8"
# export LC_ALL="zh_CN.UTF-8"
# export LC_CTYPE="zh_CN.UTF-8"
export SVN_EDITOR=vim
export EDITOR="/usr/bin/vim -p -X"

# Aliases
# #######

# Some example alias instructions
# If these are enabled they will be used instead of any instructions
# they may mask.  For example, alias rm='rm -i' will mask the rm
# application.  To override the alias instruction use a \ before, ie
# \rm will call the real rm not the alias.

alias terminal='gnome-terminal'
alias zhcon='zhcon --utf8'

# sudo环境变量设置
alias sudo="sudo -E"

# Interactive operation...
alias rm='rm -i'
#alias cp='cp -i'
alias mv='mv -i'

# Default to human readable figures
alias df='df -h'
alias du='du -h'

# Misc :)
alias less='less -r'                          # raw control characters
alias whence='type -a'                        # where, of a sort
alias grep='grep --color'                     # show differences in colour

# Some shortcuts for different directory listings
alias ls='ls --color=auto --format=vertical'
alias dir='ls'
alias vdir='ll'
alias ll='ls -l --color=auto'	# long list
alias la='ls -a --color=auto'
alias l.='ls -ld .* --show-control-chars --color=auto'
alias cls='clear'
alias h='history'
# alias vi='vim'
alias vim='vi'
alias which='alias | /usr/bin/which --tty-only --read-alias --show-dot --show-tilde'

alias dstat='dstat -cdlmnpsyrt --socket --fs'
alias valgrind='valgrind --tool=memcheck --track-fds=yes --undef-value-errors=yes --leak-check=full --show-reachable=yes --db-attach=yes -v'

#alias g++='g++ -ansi -W -Wall -ggdb'
#alias cc='cc -ansi -W -Wall'

# Functions
# #########

# Some example functions
# function settitle() { echo -ne "\e]2;$@\a\e]1;$@\a"; }

# will work PS1 will be '$ '
#PS1=
PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#I_#P") "$PWD")'
#PS1='$ '$PS1
# PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'

# 开启sudo的自动补全
complete -cf sudo

if [ "$TERM" == "screen"  ] ; then
    PROMPT_COMMAND='echo -ne  "\033k`uname -n`\033\\"'
fi

# Start tmux on every shell login

# Add the following snippet to start only one session (unless you start some manually), on login, try attach at first, only create a session if no tmux is running. and also checks tmux is installed before trying to launch it. It also tries to reattach you to an existing tmux session at logout, so that you can shut down every tmux session quickly from the same terminal at logout.
#if which tmux >/dev/null 2>&1; then
#	# if no session is started, start a new session
#	test -z ${TMUX} && tmux
#
#	# when quitting tmux, try to attach
#	while test -z ${TMUX}; do
#		tmux attach || break
#	done
#fi

# Another possibility is to try to attach to existing deattached session or start a new session:
#if [[ -z "$TMUX" ]] ;then
#	ID="`tmux ls | grep -vm1 attached | cut -d: -f1`" # get the id of a deattached session
#	if [[ -z "$ID" ]] ;then # if not available create a new one
#		tmux new-session
#	else
#		tmux attach-session -t "$ID" # if available attach to it
#	fi
#fi

export ALL_PROXY=socks5://127.0.0.1:1080
