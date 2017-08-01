alias orphans='sudo pacman -Rns $(pacman -Qtdq)'
alias dockeron='systemctl start docker.service'
alias dockeroff='systemctl stop docker.service'
alias eraseimages='docker rmi -f $(docker images -q)'
alias erasecontainers='docker rm -v -f $(docker ps -a -q)'
alias erasevolumes='docker volume rm $(docker volume ls -q)'
alias stopall='docker stop $(docker ps -a -q)'