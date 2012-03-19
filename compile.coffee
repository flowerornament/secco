#!/usr/bin/env coffee

fs   = require 'fs'
path = require 'path'

_ = require 'underscore'
props = require 'props'

md = require('node-markdown').Markdown
cc = require 'coffeecup'


# Variables

contentDir  = './src/content/'
templateDir = './src/templates/'
outputDir   = './out/'

# Prepare Content

contentPaths  = fs.readdirSync(contentDir)
contentNames  = _.map(contentPaths, (path) -> return path.split('.')[0])
content	      = _.map(contentPaths, (path) -> return fs.readFileSync(contentDir+path, 'utf8'))
contentJSON   = _.map(content,      (file) -> return props(file))
contentParsed = _.map(contentJSON,  (file) -> return md(file.__content))

# Prepare Templates

templatePaths  = fs.readdirSync(templateDir)
templateNames  = _.map(templatePaths, (path) -> return path.split('.')[0])
templates      = _.map(templatePaths, (path) -> return fs.readFileSync(templateDir+path, 'utf8'))
templateArray  = _.zip(templateNames, templates)

templateObject = {}
_.each(templateArray, (file, i, templateList) -> templateObject[templateList[i][0]] = templateList[i][1])

pages = _.map(contentJSON, (file, i) ->
	return cc.render(templateObject[file.template],
		content: contentParsed[i],
		title:   file.title,
		date:    file.date,
		meta:    file.meta
	)
)

# Render

_.each(pages, (page, i) -> fs.writeFileSync(outputDir + contentNames[i] + ".html", page, 'utf8'))
