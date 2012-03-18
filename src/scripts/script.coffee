$ ->
	figure1 = () ->
		paper = Raphael('figure1', 200, 100)
		r1 = paper.rect(10, 10, 50, 50)
		r2 = paper.rect(20, 20, 50, 50)

		r1.attr({'stroke-width': '0', fill: 'blue', 'fill-opacity': '0.5'})
		r2.attr({'stroke-width': '0', fill: 'red', 'fill-opacity': '0.5'})

	figure2 = () ->
		paper = Raphael('figure2', 200, 100)
		r1 = paper.rect(10, 10, 50, 50)
		r2 = paper.rect(20, 20, 50, 50)

		r1.attr({'stroke-width': '0', fill: 'blue', 'fill-opacity': '0.5'})
		r2.attr({'stroke-width': '0', fill: 'red', 'fill-opacity': '0.5'})
	
	figure1()
	figure2()
