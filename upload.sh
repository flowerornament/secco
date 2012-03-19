#!/usr/bin/env bash

# upload
rsync -avz --delete out/ [username]@[domain.com]:[path]

# growl
growlnotify -t secco -m 'site uploaded'
