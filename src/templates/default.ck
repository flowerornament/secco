doctype 5

html ->
	head ->
		meta charset: "utf-8"
		meta 'http-equiv': "X-UA-Compatible", content: "IE=edge,chrome=1"

		title -> @title

		meta name: "description", content: ""

		# Mobile viewport optimized: h5bp.com/viewport
		meta name: "viewport", content: "width=device-width"
		
		link rel: "stylesheet", href: "styles/style.css"

	body ->

		# HEADER
		header ->
			h1 -> @title


		# MAIN
		div id: "main", ->

			@content

		# FOOTER
		footer ->
			p -> @date
	

		script src: "http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"
		#script src: "scripts/script.js"
