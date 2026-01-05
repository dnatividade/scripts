echo "@dnat"

sudo vi /etc/bash.bashrc
----------------------------
export HISTTIMEFORMAT='%Y-%m-%d %H:%M:%S '
export HISTSIZE=
export HISTFILESIZE=10000
shopt -s histappend
export PROMPT_COMMAND="history -a; history -c; history -r"
----------------------------


