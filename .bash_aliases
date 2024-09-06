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
alias doc="docker"

alias docked='doc run --rm -it -v ${PWD}:/rails -v ruby-bundle-cache:/bundle -p 3000:3000 ghcr.io/rails/cli'
alias docked-rails='docked rails'
alias rails-dev='docked bin/dev'
alias rails-bundle='docked bundle'
alias rails-yarn='docked yarn'
alias rails-rake='docked rake'
alias rails-gem='docked gem'


alias rails-compose='doc compose'
alias rails-compose-build='doc compose build'
alias rails-compose-dev='doc compose up'
alias rails-compose-run='doc compose run --rm web bin/rails'
alias rails-compose-exec='doc compose exec web bin/rails'
alias rails-compose-bundle='doc compose run --rm web bundle'
alias rails-compose-yarn='doc compose run --rm web yarn'
alias rails-compose-bin='doc compose exec web'
