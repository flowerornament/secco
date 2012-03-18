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
_.each(templateArray, (template, i, list) -> templateObject[list[i][0]] = list[i][1])

pages = _.map(contentJSON, (page, i, list) ->
	return cc.render(templateObject[list[i].template],
		content: contentParsed[i],
		title:   list[i].title,
		date:    list[i].date,
		meta:    list[i].meta
	)
)

# Render

_.each(pages, (page, i, list) -> fs.writeFileSync(outputDir + contentNames[i] + ".html", list[i], 'utf8'))
