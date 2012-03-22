# secco

minimalist static site generator

## Why

I wanted to make a simple 1-page website and existing static site generators felt overkill.

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
3. Install dependencies <code>npm install -g coffeescript coffeecup stylus underscore node-markdown props mime</code>
4. Install [growlnotify](http://growl.info/extras.php)
5. Install <code>rsync</code> if you don't have it
6. Optionally [fork](https://github.com/msutherl/secco/fork_select) secco
7. Clone the repository and make it your own!

~~~
git clone git@github.com:msutherl/secco.git
~~~

## Wishlist

- Installation from npm
- Faster watching (may try watchr)
- Faster compiling
	- compile only files that changed
	- test and optimize existing code
- Document model so that templates can be powerful

## Troubleshooting

Q: I get a "Cannot call method 'indexOf' of undefined" error on generate.

A: You need an extra space between the YAML and the content in one of your content files.
