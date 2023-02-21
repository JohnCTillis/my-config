# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi
# For starship
[[ -s /home/borat/.cache/yay/autojump/pkg/autojump/etc/profile.d/autojump.sh ]] && source /home/borat/.cache/yay/autojump/pkg/autojump/etc/profile.d/autojump.sh
eval "$(starship init zsh)"

### PATH exports ###
export PATH="$HOME/.emacs.d/bin:$PATH"

### MY ALIASES ###
alias ref="source /home/borat/.zshrc"
alias rced="vi /home/borat/.zshrc"
alias is="sudo pacman -Syu"
alias welcome="echo "Welcome back home $USER \n You are using $SHELL and the $(uname -r) kernel version \n This is $HOME""
alias bubba='echo prostia in stare pura se perpetueaza cu viteza incredibila'
alias rm='trash-put'
alias vi='lvim'
export PATH=/home/borat/dchange/ngrok:$PATH
alias ngrok='~/programming/hacking/zphisher/.server/ngrok'
alias q='exit'
alias christmas="curl https://raw.githubusercontent.com/sergiolepore/ChristBASHTree/master/tree-EN.sh | bash"
alias emacs="emacsclient -c -a 'emacs'"
alias under_influence=echo i_was_high_when_i_wrote_this_so_suck_my_dick
alias ls='exa --color=always --group-directories-first --icons'
alias la='exa -a --color=always --group-directories-first --icons'    # all files and dirs
alias ll='exa -bl --color=always --group-directories-first --icons'   # long format
alias lla='exa -abl --color=always --group-directories-first --icons' # all files and dirs in long format
alias lt='exa -aT --color=always --group-directories-first --icons'   # tree listing
alias l.="exa -a | grep -e '^\.'"
alias lh='exa -lah --color=always --group-directories-first --icons'
alias backs='xclip -selection c -i ~/backslash.txt -r && killall xclip'
alias pipe='xclip -selection c -i ~/pipe.txt -r && killall xclip'
alias cd='pushd'
alias neofetch='clear;neofetch'

# Transfer.sh setup
transfer(){ if [ $# -eq 0 ];then echo "No arguments specified.\nUsage:\n transfer <file|directory>\n ... | transfer <file_name>">&2;return 1;fi;if tty -s;then file="$1";file_name=$(basename "$file");if [ ! -e "$file" ];then echo "$file: No such file or directory">&2;return 1;fi;if [ -d "$file" ];then file_name="$file_name.zip" ,;(cd "$file"&&zip -r -q - .)|curl --progress-bar --upload-file "-" "https://transfer.sh/$file_name"|tee /dev/null,;else cat "$file"|curl --progress-bar --upload-file "-" "https://transfer.sh/$file_name"|tee /dev/null;fi;else file_name=$1;curl --progress-bar --upload-file "-" "https://transfer.sh/$file_name"|tee /dev/null;fi;}

# Wasmer
export WASMER_DIR="/home/borat/.wasmer"
[ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"

### COMMANDS ###
neofetch

# pnpm
export PNPM_HOME="/home/borat/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end
