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
DIR="/var/www/exchange_app"

export PATH

alias pull="git pull"
alias st="git status"
alias diff="git diff"
cd $DIR

if [ ! -d $DIR/.git ]; then
	# pull
    git pull origin dev
fi
