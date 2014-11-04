#!/bin/bash
VER="1.8.5"
GIT_VERSION="$(git --version)"

echo "Removing git"
yum -y remove git-*
if [[ "$GIT_VERSION" != "git version"* ]]; then        
        echo "Dependencies..."
        yum install -y gettext-devel expat-devel curl-devel zlib-devel openssl-devel cpio perl-ExtUtils-CBuilder perl-ExtUtils-MakeMaker
        rm -rf /usr/local/src/git*
        echo "Download git"
        cd /usr/local/src && wget https://www.kernel.org/pub/software/scm/git/git-$VER.tar.gz
        tar xzvf git-$VER.tar.gz && cd git-$VER
        echo "Installing git"
        make prefix=/usr/ all && make prefix=/usr/ install
        echo "Remove git archive"
        rm -rf /usr/local/src/git-$VER.tar.gz
else
        echo "Git is already installed"
fi
