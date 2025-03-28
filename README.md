# secco

minimalist static site generator

## Features

- create static website with markdown, coffecup[1], stylus and coffeescript
- file watcher automatically re-generates site when any file changes
- mini node.js web-server
- super minimal code-base for maximum comprehensibility
- compiler written in functional style with underscore.js
- automated uploading (rsync)
- growl notification

[1] formerly coffeekup

## Install

1. Install [node.js](http://nodejs.org/) from an [installer](http://nodejs.org/#download) or with your favorite [package manager](https://github.com/joyent/node/wiki/Installing-Node.js-via-package-manager)
2. Install [npm](http://npmjs.org/) (prior to installation, I recommend running <code>sudo chown -R $USER /usr/local</code> so that you don't need to use <code>sudo</code> with <code>npm</code>)
3. Install dependencies <code>npm install -g coffeescript && npm install</code>
4. Install [growlnotify](http://growl.info/extras.php)
5. Install <code>rsync</code> if you don't have it
6. Optionally [fork](https://github.com/msutherl/secco/fork_select) secco
7. Clone the repository and make it your own!

~~~
git clone git@github.com:msutherl/secco.git
~~~
