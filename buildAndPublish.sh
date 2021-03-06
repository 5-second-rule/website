#!/bin/bash

# check to see if jekyll is installed and install if not...

# did they pass in their username?
if [ "$1" = "" ]; then
  echo "USAGE: buildAndPublish <username>"
  echo 
  echo
else
  jekyll build --safe
  scp -r _site/* "$1@cse125.ucsd.edu:/var/www/html/class/cse125/www/2014/cse125g1/"
  ssh $1@cse125.ucsd.edu 'chgrp -R cse125sp14g1 /var/www/html/class/cse125/www/2014/cse125g1/'
fi

