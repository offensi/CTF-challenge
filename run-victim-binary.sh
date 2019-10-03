#!/bin/sh
# https://github.com/offensi/CTF-challenge/run-victim-binary.sh. wtm@offensi.com

# need root to listen on privileged ports
if [[ $EUID -ne 0 ]]; then
	   echo "This script must be run as root" 
	   exit 1
fi

# initial setup
if [ ! -d /static-content ]; then
 mkdir /static_content/
 touch /static_content/theia_etags
fi

export BASE_SERVER_URL='https://someserver'
export EMAIL='xxx@gmail.com'
export HOME='/root'
export HOSTNAME='victim-binary'
export OAUTH_CLIENT_ID='xxx.apps.googleusercontent.com'
export PATH='/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin'
export PWD='/'

./victim-binary
