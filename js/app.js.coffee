class LeafLegend 
  constructor: (color1, color2, steps) ->
    @properties =
      color1: color1
      color2: color2
      steps: steps
      # map: false
      # chroma: false
      xmin: 1
      xmax: 10065 
      ymin: 0
      ymax:  3000
      xsize: 20
      ysize: 20
      cols1: []
      colurschema1: []
      colurschema2: []
      colurschema3: []
      colurschema4: []
  
  color1: (newColor1) ->
    @properties.color1 = newColor1
    this
  color2: (newColor2) ->
    @properties.color2 = newColor2
    this
  steps: (newSteps) ->
    @properties.steps = newSteps
    this
  xmin: (newXmin) ->
    @properties.xmin = newXmin
    this
  ymin: (newYmin) ->
    @properties.ymin = newYmin
    this
  xmax: (newXmax) ->
    @properties.xmax = newXmax
    this
  ymax: (newYmax) ->
    @properties.ymax = newYmax
    this
  xsize: (newXsize) ->
    @properties.xsize = newXsize
    this
  ysize: (newYsize) ->
    @properties.ysize = newYsize
    this
  cols1: (newCols1) ->
    @properties.cols1 = newCols1
    this
  colurschema1: (newColurschema1) ->
    @properties.colurschema1 = newColurschema1
    this
  colurschema2: (newColurschema2) ->
    @properties.colurschema2 = newColurschema2
    this
  colurschema3: (newColurschema3) ->
    @properties.colurschema3 = newColurschema3
    this
  colurschema4: (newColurschema4) ->
    @properties.colurschema4 = newColurschema4
    this

  makeGrid: ->
    color1 = @properties.color1 # = chroma(68.67, -13.07, -46.59, 'lab') # this can be a chroma color object. e.g. chroma(68.67, -13.07, -46.59, 'lab') or a color e.g. 'green'
    color2 = @properties.color2 # = chroma(76.84, 20.60, 51.06, 'lab') # this can be a chroma color object. e.g. chroma(76.84, 20.60, 51.06, 'lab') or a color e.g. 'tan'

    steps = @properties.steps
    # grid size. still experimental. lch color model sometimes works better in 12 to 12 grids/needs more work
    grid_size_effective = steps
    grid_size = grid_size_effective # placeholder for a later idea to scale with better detail  
    x_size = @properties.xsize 
    y_size = @properties.ysize 
    icreament_size = 1 / grid_size 

    # palette params
    $palettes = []
    $palettes.push "$#palette" + "#{i}" for i in [1..grid_size+1]
    # palette elemets
    pallets = []
    pallets.push '=$("#pallet' + "#{i}" + '")' for i in [0..grid_size]

    pallets[n] = $palettes[n+1] for n in [0..grid_size]

    colurschema1 = []
    colurschema2 = []
    colurschema3 = []
    colurschema4 = []

    colurschema1.push chroma.interpolate(color1, "black", x, "lab").hex() for x in [0..1] by icreament_size
    colurschema2.push chroma.interpolate("black", color2, x, "lab").hex() for x in [0..1] by icreament_size
    colurschema3.push chroma.interpolate(color1, "white", x, "lab").hex() for x in [0..1] by icreament_size
    colurschema4.push chroma.interpolate("white", color2, x, "lab").hex() for x in [0..1] by icreament_size

    colurs = []
    cols1 = []
    colursstatements = []
    for i in [1..grid_size]
      colurs.push "colurs" + i 
       
    colurs[i] 
    colurseq = colurs[i] = [] 
    
    for x in [0..grid_size] 
      cl1 = colurschema3[x] 
      cl2 = colurschema2[x]
      cols1.push chroma.interpolate(cl1,  cl2, m, "lab") for m in [0..1] by icreament_size
      cols1.push m for m in colurschema4  
    
    @xintervalSize = @properties.xmax/x_size
    xintervals = []
    xintervals.push @properties.xmin + (i * @xintervalSize) for i in [1..x_size]
    
    @yintervalSize = @properties.ymax/@properties.ysize
    yintervals = []
    yintervals.push @properties.ymin + (i * @yintervalSize) for i in [1..y_size]
    
    @xintervals = xintervals
    @yintervals = yintervals
    @.colurschema1 colurschema1
    @.colurschema2 colurschema2
    @.colurschema3 colurschema3
    @.colurschema4 colurschema4
    @.cols1 cols1
    this

  getColorByRangeAndSize: (x_val, y_val) ->

    ix_intervals = Math.ceil(x_val / @xintervalSize)
    iy_intervals = Math.ceil(y_val / @yintervalSize)

    @cellColorIndex = (iy_intervals * x_size) + ix_intervals

    @cellColor = @cols1[@cellColorIndex]


    return @cellColor


class window.Leaflegend extends LeafLegend

addChainedAttributeAccessor = (obj, propertyAttr, attr) ->
    obj[attr] = (newValues...) ->
        if newValues.length == 0
            obj[propertyAttr][attr]
        else
            obj[propertyAttr][attr] = newValues[0]
            obj







showGrid = (leaflegend) ->
	# input colors. chromajs colors only if name of the color
	color1 = leaflegend.properties.color1 # this can be a chroma color object. e.g. chroma(68.67, -13.07, -46.59, 'lab') or a color e.g. 'green'
	color2 = leaflegend.properties.color2 # this can be a chroma color object. e.g. chroma(76.84, 20.60, 51.06, 'lab') or a color e.g. 'tan'

	# grid size. still experimental. lch color model sometimes works better in 12 to 12 grids/needs more work
	grid_size_effective = leaflegend.properties.steps
	grid_size = grid_size_effective # placeholder for a later idea to scale with better detail  
	colurschema3 = leaflegend.properties.colurschema3
	colurschema2 = leaflegend.properties.colurschema2
	colurschema4 = leaflegend.properties.colurschema4
	cols1 = leaflegend.properties.cols1

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
	$("#outgrid").css('width', gridwidth).html('')
  # clear the space

	for x in [0..grid_size-1] 
		cl1 = colurschema3[x] 
		cl2 = colurschema2[x]
		$outgrid.append $("<li />").css("background-color", chroma.interpolate(cl1,  cl2, m, "lab")) for m in [0..1] by icreament_size
		# $outgrid.append $("<li />").css("background-color", m) for m in colurschema1
		cols1.push chroma.interpolate(cl1,  cl2, m, "lab") for m in [0..1] by icreament_size
		cols1.push m for m in colurschema4
		$outgrid.append $("<li />").css("background-color", colurschema4)
	
	$('<pre/>')
		.html('[\'' + cols1.join('\', \'') + '\']')
    	.appendTo('#outgrid')



# based on Gregor Aisch's Chroma.js Color Scale Helper on jsfiddle: http://jsfiddle.net/vis4/cYLZH/

colorsgrid1 = $('#colorsgrid1').val()
colorsgrid2 = $('#colorsgrid2').val()
steps = $('#stepsgrid').val() 
bez = 'checked'
# visualize grid
leaflegend = new LeafLegend()
leaflegend.color1 colorsgrid1
leaflegend.color2 colorsgrid2
leaflegend.steps steps
leaflegend.makeGrid()
# showGrid leaflegend

updategrid = (leaflegend) -> 
    # visualize grid
	showGrid leaflegend


$('input').change ->
	colorsgrid1 = $('#colorsgrid1').val()
	colorsgrid2 = $('#colorsgrid2').val()
	steps = $('#stepsgrid').val() 
	bez = 'checked'
	# visualize grid
	showGrid leaflegend.color1(colorsgrid1).color2(colorsgrid2).makeGrid()

