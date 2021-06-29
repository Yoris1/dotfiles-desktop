#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export LESSHISTFILE=-
export PASSWORD_STORE_DIR=~/.passwords/personal
function peewal() {
	~/.config/scripts/theme.sh $@
}
function fehwal() {
	feh -Zxd --action2 "; peewal '%f'" --scale-down $@ > /dev/null 2> /dev/null
}

export -f peewal
export -f fehwal

export _JAVA_AWT_WM_NONREPARENTING=1
