#!/bin/sh -l

echo "Hello $1"
mkdir ~/.ssh && echo "$1" > ~/.ssh/id_rsa && chmod 600 ~/.ssh/id_rsa
ulimit -n "231070"
rm -rf node_modules package-lock.json && npm cache clear --force
dep deploy $2
