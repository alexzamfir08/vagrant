# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# User specific environment and startup programs

commit() {
        git commit -m "$1";
        git push;
}

PATH=$PATH:$HOME/bin:/usr/local/zend/bin

export PATH

alias pull="git pull origin master"
alias st="git status"
alias diff="git diff"
cd /var/www/exchange_app
pull
