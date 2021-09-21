
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

path+=("$HOME/.cargo/bin" ~/.jetbrains ~/.sdk/flutter/bin)
export PATH

alias cargocl="cargo clippy --target thumbv7em-none-eabihf --release --all-features -- -D warnings -D clippy::unwrap_used -D clippy::expect_used -D clippy::indexing_slicing -D clippy::panic -D clippy::print_stdout"
alias cb="cargo build"
alias cf="cargo clippy --fix --bins --allow-dirty --allow-staged"

# Brew
alias b="brew"
alias bi="brew install"
alias bup="brew update; brew upgrade"
alias bl="brew list"
alias bii="brew cask install"
alias bin="brew info"
alias bs="brew services"
alias bsr="brew services restart"
alias bss="brew services start"

#=Vagrant
alias va="vagrant"
alias vai="vagrant init"
alias vau="vagrant up"
alias vas="vagrant ssh"
alias vad="vagrant destroy"
alias vrl="vagrant reload"

#=Java 
alias jj="java -jar"
alias j8="set -x JAVA_HOME $JAVA8_HOME"
alias j11="set -x JAVA_HOME $JAVA11_HOME"
alias j12 "set -x JAVA_HOME $JAVA12_HOME"
alias j7="set -x JAVA_HOME $JAVA7_HOME"
alias ja="java"
alias jav="java -version"
alias fern="java -jar ~/.jars/fernflower.jar -dgs=1 -hdc=0 -asc=1 -udv=0 -rsy=1" # FernFlower


# ScholarshipAmerica 
alias satest1="gpsd t 50488 1706"
alias satest2="gpsd t 50642 1980"
alias satest3="gpsd t 54503 6809"
alias saprod="gpsd p 51532 3380"
alias satest1p="http 'https://test1.emergencygrant.org/api/public/setupData/test1?0=t&1=e&2=s&3=t&4=1' | fx"

#=Git
alias git="hub"
alias g="hub"
alias gm="git merge"
alias gsa="git submodule add"
alias giit="git init"
alias gpll="git pull"
alias grc="git rebase --continue"
alias gpl="git pull --all"
alias gcl="git clone"
alias gbb='git browse --'
alias gpr='git pr show'
alias gb='git branch -a --sort=-committerdate'
alias gf='git fetch -a'
alias gr='git rebase --interactive'
alias gro='git rebase --onto'
alias gbr='git browse --'
alias gp='git pushup'
alias gdiff='git diff'
alias gd='git difftool'
alias gco='git checkout'
alias gc="git commit" 
alias gi="git issue"
alias gii="git issue create"
alias gbi="git browse -- issues"
alias gcr="git create"
alias gcrp="git create -p"
alias gcm="git commit --message"
alias glog="git log"
alias gs="git status"
alias gcd="git add . ; git commit --message='dev'; git push"
alias gll="git log --stat"
alias gl="git log --oneline"
alias gls="git branch -a --sort=-committerdate"
alias ga='git add'
alias gap='git add --patch'
alias ga.='git add .'
alias gcp='git commit; git push'
alias gwc="git whatchanged"

#=Gradle
# alias grw="gradle wrapper --distribution-type all" # Gradle Wrapper Create
# alias gri="gradle init"
# alias gr="./gradlew"
# alias grb="./gradlew build"
# alias grd="./gradlew dependencies"
# alias grdi="./gradlew dependencyInsight --dependency"


# Yarn
alias y=yarn
alias yi="yarn install"
alias ya="yarn add"
alias yad="yarn add -D"
alias yr="yarn remove"
alias yt="yarn test"
alias yaa="yarn global add" 
alias ys="yarn start"
alias yit="yarn init"
alias ysd="yarn start:dev"
alias ybp="yarn build --prod"

#=Node
alias nn="npm"
alias ni="npm i"
alias nin="npm init"
alias nie="npm i express ejs"
alias naf="npm audit fix"
alias nig="npm i -g"
alias nit="npm init"
alias nr="npm run"
alias nrs="npm run start"
alias nm="nodemon"
alias nu="npm uninstall"

#=Angular
alias ngn="ng new"
alias nggc="ng g component"
alias nggs="ng g service"


# Nest
alias ne="nest"
alias nen="nest new"
alias neg="nest g"
alias negc="nest g controller"
alias negs="nest g service"


# Firebase
alias fbi="firebase init"
alias fbs="firebase serve"
alias fbd="firebase deploy"
alias fbif="firebase init functions"


# Idea
alias i=idea
alias ii="idea ."
alias pyc="pycharm"
alias pycc="pycharm ."

#=SSH
#
s(){
  if [ $# -eq 0 ]
  then
    ssh $(cat $HOME/.last_ssh)
  else
    echo $1 > $HOME/.last_ssh &! # equivalent to disown
    ssh $1
  fi
}
alias spt="ssh pt"
# alias=sl "ssh legend@m"
# alias=sd "ssh donator@m"
# alias=sc "ssh cannon-new@m"
# alias=sb "ssh bungee@m"

#=Time
# alias=ds "date +%s"

#=curl
alias cG="curl -G" # get
alias cD="curl -d" # post

#=Compression
alias gz=gunzip
alias tc="tar -czf"
alias tx="tar -xzf"

#=Python
alias pi="./venv/bin/pip3 install"
alias py=python3
alias p3=python3
alias p3i="pip3 install"


# tmux
alias rn="tmux rename-window"
alias tm="tmux"
alias tl="tmux ls"
alias tat="tmux a -t"
alias ta="tmux a"


# Tree
alias t1="tree -L 1"
alias t2="tree -L 2"
alias t3="tree -L 3"
alias t4="tree -L 4"

#=Maven
alias mi="mvn install -DskipTests"

#=Flutter
alias f="flutter" 
alias fr="flutter run"
alias fu="flutter upgrade"
alias fpg="flutter pub get"
alias fjs="flutter pub run build_runner build"

#=Misc
alias ca="cat"
alias vc="v $HOME/.config/fish/aliases.fish"
alias rp="realpath"
alias lsg="ls | grep -i"
alias o="open"
alias oo="open ."
alias rtb="sudo pkill TouchBarServer" # refresh touchbar
alias pf="printf"
alias np="sudo nmap"
alias lsa="ls -al"
alias lrt="ls -l --sort newest"
alias md="glow -p"
alias ul="unlink"
alias coo="code ."
# alias l='lpass show -c --password -G'
alias ll="ls -l"
alias l="ls --group-directories-first --icons --ignore-glob='__*__|*.aux|*.fdb_latexmk|*.fls|*.log|*.out|cache'"
alias ls="exa"
alias ltr="l --tree"
alias lt="ls --icons --ignore-glob='__*__|*.aux|*.fdb_latexmk|*.fls|*.log|*.out|*.gz|cache' -l -s mod"
alias lss="exa"
alias le="less -r"

# Cargo
alias cr="cargo run -q"
alias crr="cargo run"

# Docker

## Compose
alias dc="docker-compose"
alias dcu="docker-compose up"
alias dcuu="docker-compose up -d"
alias dcr="dc build --no-cache"

alias tsf="tslint --fix -q -c tslint.json 'src/**/*{.ts,.tsx}'"

## Regular
alias d="docker"
alias diu="dir-traverse up"
alias did="dir-traverse down"
alias di="docker image"
alias dip="di prune"
alias dirm="di rm"
alias dils="grc -c conf.dockerimages docker image ls" 
alias dco="docker container"
alias dcorm="dc rm"
alias drm="d rm"
alias dps="grc docker ps"
alias dpsa="grc docker ps -a"


# Editors
alias v="vim"
alias vi="v"
alias vb='vim $b'
alias vim=nvim
alias vimdiff "v -d"
alias cl=clion
alias cll="clion ."


# Python
alias pip=pip3
alias python=python3 

alias rl="readlink -f"
alias p="pure"
alias reload='. ~/.config/fish/config.fish' # Reload configuration
alias r=ranger
alias tree='tree -C' # Make tree colored
alias w=wget
alias st="speedtest"

alias irb="irb --simple-prompt"
alias cm="chmod +x" 

# Directory

c () {
  cd $1 && l 
}

alias conf="v ~/.zshrc"
alias ~="c $HOME"
alias .="c $START"
alias ..="c .."
alias ...="c ../.."
alias cdp="c $PROJECTS"
alias uhg="c $PROJECTS/UHG"
alias sa="c $PROJECTS/SA"
alias dl="cd $HOME/Downloads" 

alias du1="du -d=1 -h"
alias fer="java -jar $HOME/.jars/fernflower.jar -dgs=1"
# alias=gitzip="git archive HEAD -o "
alias wasmnode="cargo generate --git https://github.com/rustwasm/wasm-pack-template"

alias t="tree -L 2"
alias j="jmp"
alias emulator="$ANDROID_SDK/emulator/emulator"

alias mvd="mv ~/Downloads/* ."

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

# zinit light zsh-users/zsh-syntax-highlighting
zinit light zdharma/fast-syntax-highlighting

zinit ice wait lucid    # wait is same wait"0"
zinit load zsh-users/zsh-autosuggestions

# Load starship theme
eval "$(starship init zsh)"


### End of Zinit's installer chunk

WORDCHARS='*?_[]~=&;!#$%^(){}<>.-'

# https://stackoverflow.com/a/22627273/4889030
zstyle ':completion:*' completer _complete
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+l:|=* r:|=*'

# autocompletion https://stackoverflow.com/a/58517668/4889030
autoload -Uz compinit && compinit
