# Enable colors
autoload -U colors && colors

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats "on %{$fg[yellow]%}%b%{$reset_color%}"

# Set up the prompt (with git branch name)
setopt prompt_subst
PROMPT='%F{012} %~%f ${vcs_info_msg_0_}
%F{002}%@ %U%D{%a}%u %D{%d %b}%f %F{015}%#%f '

# History in cache directory:
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vi mode
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit

setopt autocd extendedglob nomatch
unsetopt beep notify

# Aliases
alias a='/home/$USER/.config/mescripts/a.sh'
alias c='/home/$USER/.config/mescripts/a.sh'
alias nv='/home/$USER/.dotdot/mescripts/.config/mescripts/nv.sh'

alias alu='apt list --upgradable'
alias ud='sudo apt update'
alias ug='sudo apt upgrade -y'
alias sai='sudo apt install'
alias sau='sudo apt autoremove'
alias debin='sudo dpkg -i'
alias ni='nix-env -iA' # nix-env -iA nixpkgs.packagename # install
alias ne='nix-env -e'  # nix-env -e packagename # erase
alias nu='nix-env -u'  # Update All Packages
alias nl='nix-env -q'  # List All Packages

alias edwc='nmcli dev disconnect enp7s0 && nmcli radio wifi on'
alias ethc='nmcli dev connect enp7s0'
alias ethd='nmcli dev disconnect enp7s0'
alias ethrecon='nmcli dev disconnect enp7s0 && nmcli dev connect enp7s0'
alias netdevices='nmcli dev status'
alias wdec='nmcli radio wifi off && nmcli dev connect enp7s0'
alias wificon='nmcli device wifi connect'
alias wific='nmcli radio wifi on'
alias wifid='nmcli radio wifi off'
alias wifil='nmcli device wifi list'

alias di='docker images'
alias dps='docker ps'
alias dpsa='docker ps -a'
alias db='docker build -t'
alias dr='docker run'
alias ds='docker start'
alias drm='docker rm'

alias gs='git status'
alias ga='git add .'
alias gm='git commit -m'
alias gma='git commit -a -m'
alias gps='git push'
alias gpl='git pull'

alias pof='systemctl poweroff'
alias rb='systemctl reboot'
alias hi='systemctl suspend'

alias ca='conda activate'
alias cacs='conda activate binacs'
alias cda='conda deactivate'

alias py='python3'
alias jn='jupyter notebook'
alias pg='pgadmin4'

alias dox='cd /home/$USER/.dotdot/dox/Documents'
alias docacs='cd /home/$USER/Desktop/binery'
alias dot='cd /home/$USER/.dotdot'
alias mescripts='cd /home/$USER/.dotdot/mescripts/.config/mescripts'
alias dsk='cd /home/$USER/Desktop'
alias projacs='cd /home/$USER/binery-core/packages/binery-acs'
alias sckls='cd /home/$USER/suckless'
alias acscr='conda activate binacs && cd /home/$USER/work/binery-acs/etl-pipeline/scripts'

alias f='lf'
alias vids='cd /home/$USER/Videos && lf'
alias dwn='cd /home/$USER/Downloads && lf'
alias fpy='cd /home/$USER/py4e/vdo && lf'

# Fix vi opening with proper colorscheme
alias nvi='/home/$USER/.local/bin/squashfs-root/usr/bin/nvim -c "colorscheme habamax" -c "hi Normal guibg=#000000"' # add .local/bin instead of /bin
# alias vi='nvim -c "colorscheme habamax" -c "hi Normal guibg=#000000"'
# alias vi='NVIM_APPNAME=nvi nvim -c "colorscheme habamax" -c "hi Normal guibg=#000000"'
alias vi='NVIM_APPNAME=nvi nvim'
alias vit='nvim -c "colorscheme habamax" -c "hi Normal guibg=#000000" -c "Ex"'
alias virc='cd /home/$USER/.config/nvim && nvim -c "colorscheme habamax" -c "hi Normal guibg=#000000" -c "Ex"'
alias mpvrc='cd /home/$USER/.config/mpv && nvim -c "colorscheme habamax" -c "hi Normal guibg=#000000" -c "Ex"'
alias vibk='mv /home/$USER/.config/nvim ~/.config/nvimfinal'
alias viget='mv /home/$USER/.config/nvimfinal ~/.config/nvim'
alias viacs='conda activate binacs && cd /home/$USER/work/binery-acs/etl-pipeline && NVIM_APPNAME=nvi nvim -c "Ex"'
alias viz='nvim /home/$USER/.zshrc -c "colorscheme habamax" -c "hi Normal guibg=#000000"'
alias soz='source /home/$USER/.zshrc'
alias agenda='nvim /home/$USER/dox/0today.txt -c "colorscheme habamax" -c "hi Normal guibg=#000000"'
alias todo='nvim /home/$USER/dox/todo.txt -c "colorscheme habamax" -c "hi Normal guibg=#000000"'
alias setlap='nvim /home/$USER/.dotdot/xtra/Desktop/setjob.txt -c "colorscheme habamax" -c "hi Normal guibg=#000000"'
alias cmp='cd /home/$USER/work/binery-data/ && nvim 00companieslist.txt -c "colorscheme habamax" -c "hi Normal guibg=#000000"'

alias lsa='ls -lah --color=auto --group-directories-first'
alias ls='ls -ah --color=auto --group-directories-first'
alias la='ls -lah --color=auto'

#alias ls='exa --icons'
alias dt='date +"%y%m%d"'
alias q='exit'

# alias lwf='flatpak run io.gitlab.librewolf-community & xdotool search --sync --onlyvisible --class "Librewolf" windowactivate key F11'
# alias lw='flatpak run io.gitlab.librewolf-community'

# export PATH="$PATH:/home/penguin/miniconda3/bin"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/$USER/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/$USER/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/$USER/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/$USER/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup

# To prevent conda from activating base
# conda config --set auto_activate_base false
# <<< conda initialize <<<

export PATH="$PATH:/usr/bin/Postman:/usr/pgadmin4/bin:$HOME/nvim/bin"

if [ -e /home/p/.nix-profile/etc/profile.d/nix.sh ]; then . /home/p/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
