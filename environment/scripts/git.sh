#!/bin/bash
VER="1.8.5"
echo "Removing github-1.7.1"
yum -y remove git-*

echo "Dependencies..."
yum install -y gettext-devel expat-devel curl-devel zlib-devel openssl-devel cpio perl-ExtUtils-CBuilder perl-ExtUtils-MakeMaker
rm -rf /usr/local/src/git*
echo "Download git"
cd /usr/local/src && wget https://www.kernel.org/pub/software/scm/git/git-$VER.tar.gz
tar xzvf git-$VER.tar.gz && cd git-$VER
make prefix=/usr/bin all && make prefix=/usr/bin install
cd /usr/bin && 	ln -s /usr/local/bin/git ./git
rm -rf /usr/local/src/git-$VER.tar.gz