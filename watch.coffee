#!/usr/bin/env coffee

util = require('util')
exec = require('child_process').exec

coffeescript = require('coffee-script')
watchr = require('watchr')

basePath = '/out/'

console.log "watching " + process.cwd() + basePath

watchr.watch (process.cwd() + basePath), ->
	command = "./compile.sh"
	console.log command
	
	child = exec(command, (error, stdout, stderr) ->
		util.print stdout
		util.print stderr
		console.log "exec error: " + error if error isnt null
	)
