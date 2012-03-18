# secco

secco is a minimalist static site generator

## Why

I wanted to make a simple 1-page website and existing static site generators felt overkill.

## Features

- create static website with markdown, coffecup[1], stylus and coffeescript
- file watcher automatically re-generates site when any file changes
- mini node.js web-server
- super minimal code-base for maximum comprehensibility
- compiler written in functional style with underscore.js

[1] formerly coffeekup

## Requirements

- node.js
- coffeescript
- coffeecup
- stylus
- underscore.js
- node-markdown
- props

## Troubleshooting

Q: I get a "Cannot call method 'indexOf' of undefined" error on generate.

A: You need an extra space between the YAML and the content in one of your content files.
