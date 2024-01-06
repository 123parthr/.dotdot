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
%F{002}%@ %B%D{%a}%b %D{%d %b}%f %F{015}%#%f '

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
alias a='$HOME/.config/mescripts/a.sh'
alias c='$HOME/.config/mescripts/a.sh'
alias nv='$HOME/.config/mescripts/nv.sh'
alias pstm='cd $HOME/suckless/Postman/ && ./Postman'

alias alu='apt list --upgradable'
alias ud='sudo apt update'
alias ug='sudo apt upgrade -y --allow-downgrades'
alias sai='sudo apt install'
alias sau='sudo apt autoremove'
alias debin='sudo dpkg -i'
alias ni='nix-env -iA' # nix-env -iA nixpkgs.packagename # install
alias ne='nix-env -e'  # nix-env -e packagename # erase
alias nu='nix-env -u'  # Update All Packages
alias nl='nix-env -q'  # List All Packages
alias ncu='nix-channel --update'  # Update all channels

alias edwc='nmcli dev disconnect enp7s0 && nmcli radio wifi on'
alias ethc='nmcli dev connect enp7s0'
alias ethd='nmcli dev disconnect enp7s0'
alias ethrecon='nmcli dev disconnect enp7s0 && nmcli dev connect enp7s0'
alias netdevices='nmcli dev status'
alias wdec='nmcli radio wifi off && nmcli dev connect enp7s0'
alias wifihot='nmcli device wifi list && nmcli device wifi connect 9A:F6:1C:0D:A7:18'
alias wificon='nmcli device wifi connect'
alias wific='nmcli radio wifi on'
alias wifid='nmcli radio wifi off'
alias wifil='nmcli device wifi list'

alias nh='ngrok http'
alias dcub='sudo docker compose up --build'
alias docker='sudo docker'
alias di='sudo docker images'
alias dps='sudo docker ps'
alias dpsa='sudo docker ps -a'
alias db='sudo docker build -t'
alias dr='sudo docker run'
alias ds='sudo docker start'
alias drm='sudo docker rm'

alias gs='git status'
alias gl='git log'
alias glone='git log --oneline'
alias ga='git add '
alias gaa='git add .'
alias gm='git commit -m'
alias gma='git commit -a -m'
alias gps='git push'
alias gpl='git pull'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gmain='git config --global init.defaultBranch main'
alias gpomr='git pull origin master'
alias gpomn='git pull origin main'

alias pof='systemctl poweroff'
alias rb='systemctl reboot'
alias hi='systemctl suspend'

alias ca='conda activate'
alias cacs='conda activate binacs'
alias cda='conda deactivate'

alias py='python3'
alias mj='mojo'
alias jn='jupyter notebook'
alias pg='pgadmin4'
alias mdbc='mongodb-compass'

alias dox='cd $HOME/.dotdot/dox/Documents'
alias docacs='cd $HOME/Desktop/binery'
alias dot='cd  $HOME/.dotdot'
alias mescripts='cd $HOME/.dotdot/mescripts/.config/mescripts'
alias goset='cd $HOME/.dotdot/mescripts/.config/mescripts/gosetset'
alias dsk='cd $HOME/Desktop'
alias projacs='cd $HOME/binery-core/packages/binery-acs'
alias sckls='cd $HOME/suckless'
alias acscr='conda activate binacs && cd $HOME/work/binery-acs/etl-pipeline/scripts'
# alias binbot='conda activate binbot && cd $HOME/work/wati-api'
# alias binbotc='conda activate binbot && cd $HOME/work/wati-api && NVIM_APPNAME=nvi nvim .'
alias binbot='cd $HOME/work/binery-bot'
alias binbotc='cd $HOME/work/binery-bot && NVIM_APPNAME=nvi nvim .'
alias chrtc='cd $HOME/prsnl/cohort && NVIM_APPNAME=nvi nvim .'
alias chrt='cd $HOME/prsnl/cohort'
alias cwd='cd $HOME/prsnl/ztm_webdev && NVIM_APPNAME=nvi nvim .'
alias dwd='cd $HOME/Downloads/0a23courses/0js/webdev/\[GigaCourse.Com\]\ Udemy\ -\ The\ Complete\ Web\ Developer\ in\ 2023\ Zero\ to\ Mastery\ \(8-2023\) && lf'
alias chas='cd $HOME/prsnl/cohort/assignments && NVIM_APPNAME=nvi nvim .'


alias f='lf'
alias vids='cd $HOME/Videos && lf'
alias dw='cd $HOME/Downloads && lf'
alias prsnl='cd $HOME/prsnl'

# Fix vi opening with proper colorscheme
alias nvi='$HOME/.local/bin/squashfs-root/usr/bin/nvim -c "colorscheme habamax" -c "hi Normal guibg=#000000"' # add .local/bin instead of /bin
# alias vi='nvim -c "colorscheme habamax" -c "hi Normal guibg=#000000"'
# alias vi='NVIM_APPNAME=nvi nvim -c "colorscheme habamax" -c "hi Normal guibg=#000000"'
alias vi='NVIM_APPNAME=nvi nvim'
alias vit='nvim -c "colorscheme habamax" -c "hi Normal guibg=#000000" -c "Ex"'
alias virc='cd $HOME/.config/nvi && NVIM_APPNAME=nvi nvim -c "Ex"'
alias mpvrc='cd $HOME/.config/mpv && nvim -c "colorscheme habamax" -c "hi Normal guibg=#000000" -c "Ex"'
alias vibk='mv $HOME/.config/nvim ~/.config/nvimfinal'
alias viget='mv $HOME/.config/nvimfinal ~/.config/nvim'
alias viacs='conda activate binacs && cd $HOME/work/binery-acs/etl-pipeline && NVIM_APPNAME=nvi nvim -c "Ex"'
alias visrel='conda activate tenaga_eca && $HOME/work/social_eca && NVIM_APPNAME=nvi nvim -c "Ex"'
alias jnsr='conda activate tenaga_eca_jn && $HOME/work/scl_rel/openai_api && jupyter notebook'
alias visrai='conda activate tenaga_eca && $HOME/work/social_eca && NVIM_APPNAME=nvi nvim -c "Ex"'
alias cdsrsc='conda activate tenaga_eca && $HOME/work/social_eca/scripts'
alias lrnc='cd $HOME/prsnl/lrnc'
# alias viz='nvim /home/$USER/.zshrc -c "colorscheme habamax" -c "hi Normal guibg=#000000"'
alias viz='NVIM_APPNAME=nvi nvim $HOME/.zshrc'
alias soz='source $HOME/.zshrc'
alias agenda='nvim $HOME/dox/0today.txt -c "colorscheme habamax" -c "hi Normal guibg=#000000"'
# alias todo='nvim $HOME/dox/todo.txt -c "colorscheme habamax" -c "hi Normal guibg=#000000"'
alias todo='cd $HOME/.dotdot/dox/Documents/todo/ && NVIM_APPNAME=nvi nvim -c "Ex"'
alias today='cd $HOME/.dotdot/dox/Documents/todo/ && NVIM_APPNAME=nvi nvim ./01-today.txt -c ":15"'
alias setlap='nvim $HOME/.dotdot/xtra/Desktop/setjob.txt -c "colorscheme habamax" -c "hi Normal guibg=#000000"'
alias cmp='cd $HOME/work/binery-data/ && nvim 00companieslist.txt -c "colorscheme habamax" -c "hi Normal guibg=#000000"'
alias prac='cd $HOME/Music/python_std_e/prac && conda activate prac'
alias gcpc='cd $HOME/Music/0_courses/gcp/GCP28min && lf'

alias lrnflask='cd $HOME/prsnl/lrnflask'
alias fpy='cd $HOME/py4e/vdo && lf'
alias csql='$HOME/Music/0_courses/sql/\[FreeCourseSite.com\]\ Udemy\ -\ The\ Complete\ SQL\ Bootcamp\ 2022\ Go\ from\ Zero\ to\ Hero && lf'
alias cfl='cd $HOME/Downloads/0a23courses/0python/pydev/flask/Udemy\ -\ Python\ and\ Flask\ Bootcamp\ Create\ Websites\ using\ Flask\! && lf'
alias cgit='cd $HOME/Downloads/0a23courses/devops/git/\[GigaCourse.Com\]\ Udemy\ -\ The\ Git\ \&\ Github\ Bootcamp/ && lf'


alias lsa='ls -lah --color=auto --group-directories-first'
alias ls='ls -ah --color=auto --group-directories-first'
alias la='ls -lah --color=auto'

#alias ls='exa --icons'
alias dt='date +"%y%m%d"'
alias q='exit'

# GCP
alias cldrnun='gcloud run deploy --source . --allow-unauthenticated'
alias gcldpdn='gcloud config set project binery-pdn'
alias gclddev='gcloud config set project binery-mvp'
alias gcldprj='gcloud config get-value project'

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

export PATH="$PATH:/usr/bin/Postman:/usr/pgadmin4/bin:$HOME/nvim/bin:/usr/bin/"

if [ -e /home/p/.nix-profile/etc/profile.d/nix.sh ]; then . /home/p/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
export MODULAR_HOME="$HOME/.modular"
export PATH="$MODULAR_HOME/pkg/packages.modular.com_mojo/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
