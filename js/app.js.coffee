
showGrid = (cs1, cs2, steps) ->
	# input colors. chromajs colors only if name of the color
	color1 = cs1 # this can be a chroma color object. e.g. chroma(68.67, -13.07, -46.59, 'lab') or a color e.g. 'green'
	color2 = cs2 # this can be a chroma color object. e.g. chroma(76.84, 20.60, 51.06, 'lab') or a color e.g. 'tan'

	# grid size. still experimental. lch color model sometimes works better in 12 to 12 grids/needs more work
	grid_size_effective = steps
	grid_size = grid_size_effective # placeholder for a later idea to scale with better detail  
	console.log grid_size

	icreament_size = 1 / grid_size 

	# palette params
	$palettes = []
	$palettes.push "$#palette" + "#{i}" for i in [1..grid_size+1]
	# palette elemets
	pallets = []
	pallets.push '=$("#pallet' + "#{i}" + '")' for i in [0..grid_size]

	pallets[n] = $palettes[n+1] for n in [0..grid_size]

	$outgrid = $("#outgrid")

	# set the width based on size
	gridwidthpix = steps * 25
	if steps < 9
		gridwidth = gridwidthpix + 55
	else if steps < 10 
		gridwidth = gridwidthpix + 27
	else if steps < 11 
		gridwidth = gridwidthpix + 55
	else if steps < 12 
		gridwidth = gridwidthpix + 27
	else if steps < 18 
		gridwidth = gridwidthpix + 50
	else if steps < 19
		gridwidth = gridwidthpix + 48
	else if steps < 20 
		gridwidth = gridwidthpix + 55
	else if steps < 22
		gridwidth = gridwidthpix + 25 
	else if steps < 25
		gridwidth = gridwidthpix + 50
	else if steps < 26
		gridwidth = gridwidthpix + 25
	else 
		gridwidth = gridwidthpix + 50
	$("#outgrid").css('width', gridwidth) 

	colurschema1 = []
	colurschema2 = []
	colurschema3 = []
	colurschema4 = []

	# colurschema1.push chroma.interpolate(color1, "black", x, "lch").hex() for x in [0..1] by icreament_size
	colurschema2.push chroma.interpolate("black", color2, x, "lch").hex() for x in [0..1] by icreament_size
	colurschema3.push chroma.interpolate(color1, "white", x, "lch").hex() for x in [0..1] by icreament_size
	colurschema4.push chroma.interpolate("white", color2, x, "lch").hex() for x in [0..1] by icreament_size

	colurs = []
	cols1 = []
	colursstatements = []
	for i in [1..grid_size]
		colurs.push "colurs" + i 
		 
	colurs[i] 
	colurseq = colurs[i] = [] 
	# clear the space
	$('#outgrid').html('')
	for x in [0..grid_size-1] 
		cl1 = colurschema3[x] 
		cl2 = colurschema2[x]
		$outgrid.append $("<li />").css("background-color", chroma.interpolate(cl1,  cl2, m, "lch")) for m in [0..1] by icreament_size
		cols1.push chroma.interpolate(cl1,  cl2, m, "lch") for m in [0..1] by icreament_size
		$outgrid.append $("<li />").css("background-color", colurschema4)
	
	$('<pre/>')
		.html('[\'' + cols1.join('\', \'') + '\']')
    	.appendTo('#outgrid')


# based on Gregor Aisch's Chroma.js Color Scale Helper on jsfiddle: http://jsfiddle.net/vis4/cYLZH/

updategrid = () ->
    colorsgrid1 = $('#colorsgrid1').val()
    colorsgrid2 = $('#colorsgrid2').val()
    steps = $('#stepsgrid').val() 
    bez = 'checked'
    altcolorsgrid1 = $('#colorsgrid1').val().replace(/(, *| +)/g, ',').split(',')
    altcolorsgrid2 = $('#colorsgrid2').val().replace(/(, *| +)/g, ',').split(',')    
    # visualize grid
    showGrid colorsgrid1, colorsgrid2, steps


updategrid()
$('input').change updategrid

