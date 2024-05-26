# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
export HISTFILE=$HOME/.local/.bash_history
export TERM=xterm-256color

# geoip function
i() {
	curl http://geoip.lan/$1
}

# pomodoro snips, thanks to @bashbunni
declare -A pomo_options
pomo_options["work"]="45"
pomo_options["break"]="10"

pomodoro () {
  if [ -n "$1" -a -n "${pomo_options["$1"]}" ]; then
  val=$1
  echo $val | lolcat
  timer ${pomo_options["$val"]}m
  tmux display-popup -w 25 -h 4 -E -T "$val finished" 'read -n 1 -s -r -p "press any key to close"'
  fi
}

alias work="pomodoro 'work'"
alias br="pomodoro 'break'"
alias vi=nvim

# fancy prompt
function _PROMPT_COMMAND() {
	local EXIT="$?"
	local red="\\[$(tput setaf 1)\\]"
	local green="\\[$(tput setaf 2)\\]"
	local blue="\\[$(tput setaf 4)\\]"
	local reset_color="\\[$(tput sgr0)\\]"
	if [ $(id -u) -eq 0 ]; then
		local column_color=${red}
	else
		local column_color=${green}	
	fi
	if [[ $EXIT -eq 0 ]]; then
		local arrow_color=${green}
	else
		local arrow_color=${red}
	fi
	local base_directory="${blue}\W${reset_color}"  
	local arrow="${arrow_color}➜${reset_color}"
	local column="${column_color}:${reset_color}"
	PS1="${arrow} ${base_directory} ${column} "
}
PROMPT_COMMAND=_PROMPT_COMMAND
[ -z "$TMUX"  ] && { tmux attach || exec tmux new-session && exit;}
