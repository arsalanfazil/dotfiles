# git aliases
alias g="git"
alias gc="g clone"
alias gs="g status"
alias gi="g init"
alias ga="g add"
alias gct="g commit"
alias gph="g push"
alias gpl="g pull"
alias gr="git restore"
alias gb="git branch"
alias gco="git checkout"


# sdocker aliases
alias su-docker="sudo docker"

alias docked='su-docker run --rm -it -v ${PWD}:/rails -v ruby-bundle-cache:/bundle -p 3000:3000 ghcr.io/rails/cli'
alias rails='docked rails'
alias rails-dev='docked bin/dev'
alias rails-bundle='docked bundle'
alias rails-yarn='docked yarn'
alias rails-rake='docked rake'
alias rails-gem='docked gem'


alias rails-compose='su-docker compose'
alias rails-compose-build='su-docker compose build'
alias rails-compose-dev='su-docker compose up'
alias rails-compose-run='su-docker compose run --rm web bin/rails'
alias rails-compose-exec='su-docker compose exec web bin/rails'
alias rails-compose-bundle='su-docker compose run --rm web bundle'
alias rails-compose-yarn='su-docker compose run --rm web yarn'
