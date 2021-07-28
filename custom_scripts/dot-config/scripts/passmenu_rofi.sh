#!/usr/bin/env bash
export PASSWORD_STORE_CLIP_TIME=5
shopt -s nullglob globstar
typeit=0
export PASSWORD_STORE_DIR=~/.passwords/$1

prefix=${PASSWORD_STORE_DIR-~/.password-store}
password_files=( "$prefix"/**/*.gpg )
password_files=( "${password_files[@]#"$prefix"/}" )
password_files=( "${password_files[@]%.gpg}" )

password=$(printf '%s\n' "${password_files[@]}" | rofi -dmenu -config ~/.config/rofi/launcher.rasi -p "  $1" "$@")

[[ -n $password ]] || exit

if [[ $typeit -eq 0 ]]; then
	pass show -c "$password" 2>/dev/null
else
	pass show "$password" | { IFS= read -r pass; printf %s "$pass"; } |
		xdotool type --clearmodifiers --file -
fi
