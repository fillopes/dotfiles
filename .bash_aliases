alias ll='ls -alF'
alias la='ls -A'  
alias l='ls -CF'  

alias orphans='sudo pacman -Rns $(pacman -Qtdq)'
alias dockeron='systemctl start docker.service'
alias dockeroff='systemctl stop docker.service'
alias eraseimages='docker rmi -f $(docker images -q)'
alias erasecontainers='docker rm -v -f $(docker ps -a -q)'
alias erasevolumes='docker volume rm $(docker volume ls -q)'
alias stopall='docker stop $(docker ps -a -q)'
alias f='find ./ -iname'

## ex - archive extractor
## usage: extract <file>

extract ()
 {
   if [ -f $1 ] ; then
     case $1 in
       *.tar.bz2)   tar xjf $1   ;;
       *.tar.gz)    tar xzf $1   ;;
       *.bz2)       bunzip2 $1   ;;
       *.rar)       unrar x $1     ;;
       *.gz)        gunzip $1    ;;
       *.tar)       tar xf $1    ;;
       *.tbz2)      tar xjf $1   ;;
       *.tgz)       tar xzf $1   ;;
       *.zip)       unzip $1     ;;
       *.Z)         uncompress $1;;
       *.7z)        7z x $1      ;;
       *)           echo "'$1' cannot be extracted via ex()" ;;
     esac
   else
     echo "'$1' is not a valid file"
   fi
 }

