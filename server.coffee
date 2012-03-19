#!/usr/bin/env coffee

http = require("http")
fs = require("fs")
path = require("path")
mime = require("mime")

http.createServer((request, response) ->
	# console.log "request" 
	basePath = "./out"
	filePath = basePath + request.url
	filePath = basePath + "/index.html" if filePath is basePath + "/"
	extname = path.extname(filePath)
	contentType = mime.lookup(extname)
	path.exists filePath, (exists) ->
		if exists
			fs.readFile filePath, (error, content) ->
				if error
					response.writeHead 500
					response.end()
				else
					response.writeHead 200,
					"Content-Type": contentType
					response.end content, "utf-8"
		else
			response.writeHead 404
			response.end()
).listen 8888

console.log "server running at http://127.0.0.1:8888/"
