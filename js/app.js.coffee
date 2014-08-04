
showGrid = (cs1, cs2, steps) ->
	# input colors. chromajs colors only if name of the color
	color1 = cs1 # this can be a chroma color object. e.g. chroma(68.67, -13.07, -46.59, 'lab') or a color e.g. 'green'
	color2 = cs2 # this can be a chroma color object. e.g. chroma(76.84, 20.60, 51.06, 'lab') or a color e.g. 'tan'

	# grid size. still experimental. lch color model sometimes works better in 12 to 12 grids/needs more work
	grid_size_effective = steps
	grid_size = grid_size_effective # placeholder for a later idea to scale with eater detail  
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
	if steps < 18 
		gridwidth = gridwidthpix + 50
	else if steps < 22
		gridwidth = gridwidthpix + 25 
	else if steps < 25
		gridwidth = gridwidthpix + 50
	else if steps < 26
		gridwidth = gridwidthpix + 25
	else 
		gridwidth = gridwidthpix + 50
	$("#outgrid").css('width', gridwidth) 

	console.log gridwidth

	colurschema1 = []
	colurschema2 = []
	colurschema3 = []
	colurschema4 = []

	# colurschema1.push chroma.interpolate(color1, "black", x, "lch").hex() for x in [0..1] by icreament_size
	colurschema2.push chroma.interpolate("black", color2, x, "lch").hex() for x in [0..1] by icreament_size
	colurschema3.push chroma.interpolate(color1, "white", x, "lch").hex() for x in [0..1] by icreament_size
	colurschema4.push chroma.interpolate("white", color2, x, "lch").hex() for x in [0..1] by icreament_size


	# depends on the row size

	# colurs1 = []
	# colurs2 = []
	# colurs3 = []
	# colurs4 = []
	# colurs5 = []
	# colurs6 = []
	# colurs7 = []
	# colurs8 = []
	# colurs9 = []
	# colurs10 = []
	# colurs11 = []
	# colurs12 = []
	# colurs13 = []
	# colurs14 = []
	# colurs15 = []
	# colurs16 = []
	# colurs17 = []
	# colurs18 = []
	# colurs19 = []
	# colurs20 = []
	# colurs21 = colurschema4

	colurs = []
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
		$outgrid.append $("<li />").css("background-color", colurschema4)
	# $outgrid.append $("<li />").css("background-color", colurs1[each]) for each in [0..grid_size]
	# $outgrid.append $("<li />").css("background-color", colurs2[each]) for each in [0..grid_size]
	# $outgrid.append $("<li />").css("background-color", colurs3[each]) for each in [0..grid_size]
	# $outgrid.append $("<li />").css("background-color", colurs4[each]) for each in [0..grid_size]
	# $outgrid.append $("<li />").css("background-color", colurs5[each]) for each in [0..grid_size]
	# $outgrid.append $("<li />").css("background-color", colurs6[each]) for each in [0..grid_size]
	# $outgrid.append $("<li />").css("background-color", colurs7[each]) for each in [0..grid_size]
	# $outgrid.append $("<li />").css("background-color", colurs8[each]) for each in [0..grid_size]
	# $outgrid.append $("<li />").css("background-color", colurs9[each]) for each in [0..grid_size]
	# $outgrid.append $("<li />").css("background-color", colurs10[each]) for each in [0..grid_size]
	# $outgrid.append $("<li />").css("background-color", colurs11[each]) for each in [0..grid_size]
	# $outgrid.append $("<li />").css("background-color", colurs12[each]) for each in [0..grid_size]
	# $outgrid.append $("<li />").css("background-color", colurs13[each]) for each in [0..grid_size]
	# $outgrid.append $("<li />").css("background-color", colurs14[each]) for each in [0..grid_size]
	# $outgrid.append $("<li />").css("background-color", colurs15[each]) for each in [0..grid_size]
	# $outgrid.append $("<li />").css("background-color", colurs16[each]) for each in [0..grid_size]
	# $outgrid.append $("<li />").css("background-color", colurs17[each]) for each in [0..grid_size]
	# $outgrid.append $("<li />").css("background-color", colurs18[each]) for each in [0..grid_size]
	# $outgrid.append $("<li />").css("background-color", colurs19[each]) for each in [0..grid_size]
	# $outgrid.append $("<li />").css("background-color", colurs20[each]) for each in [0..grid_size]
	# $outgrid.append $("<li />").css("background-color", colurs21[each]) for each in [0..grid_size]


	# colurs1.push chroma.interpolate(colurschema3[0], colurschema2[0], x, "lch").hex() for x in [0..1] by icreament_size
	# colurs2.push chroma.interpolate(colurschema3[1], colurschema2[1], x, "lch").hex() for x in [0..1] by icreament_size
	# colurs3.push chroma.interpolate(colurschema3[2], colurschema2[2], x, "lch").hex() for x in [0..1] by icreament_size
	# colurs4.push chroma.interpolate(colurschema3[3], colurschema2[3], x, "lch").hex() for x in [0..1] by icreament_size
	# colurs5.push chroma.interpolate(colurschema3[4], colurschema2[4], x, "lch").hex() for x in [0..1] by icreament_size
	# colurs6.push chroma.interpolate(colurschema3[5], colurschema2[5], x, "lch").hex() for x in [0..1] by icreament_size
	# colurs7.push chroma.interpolate(colurschema3[6], colurschema2[6], x, "lch").hex() for x in [0..1] by icreament_size
	# colurs8.push chroma.interpolate(colurschema3[7], colurschema2[7], x, "lch").hex() for x in [0..1] by icreament_size
	# colurs9.push chroma.interpolate(colurschema3[8], colurschema2[8], x, "lch").hex() for x in [0..1] by icreament_size
	# colurs10.push chroma.interpolate(colurschema3[9], colurschema2[9], x, "lch").hex() for x in [0..1] by icreament_size
	# colurs11.push chroma.interpolate(colurschema3[10], colurschema2[10], x, "lch").hex() for x in [0..1] by icreament_size
	# colurs12.push chroma.interpolate(colurschema3[11], colurschema2[11], x, "lch").hex() for x in [0..1] by icreament_size
	# colurs13.push chroma.interpolate(colurschema3[12], colurschema2[12], x, "lch").hex() for x in [0..1] by icreament_size
	# colurs14.push chroma.interpolate(colurschema3[13], colurschema2[13], x, "lch").hex() for x in [0..1] by icreament_size
	# colurs15.push chroma.interpolate(colurschema3[14], colurschema2[14], x, "lch").hex() for x in [0..1] by icreament_size
	# colurs16.push chroma.interpolate(colurschema3[15], colurschema2[15], x, "lch").hex() for x in [0..1] by icreament_size
	# colurs17.push chroma.interpolate(colurschema3[16], colurschema2[16], x, "lch").hex() for x in [0..1] by icreament_size
	# colurs18.push chroma.interpolate(colurschema3[17], colurschema2[17], x, "lch").hex() for x in [0..1] by icreament_size
	# colurs19.push chroma.interpolate(colurschema3[18], colurschema2[18], x, "lch").hex() for x in [0..1] by icreament_size
	# colurs20.push chroma.interpolate(colurschema3[19], colurschema2[19], x, "lch").hex() for x in [0..1] by icreament_size

	# clear the space
	# $('#outgrid').html('')
	  
	# $outgrid.append $("<li />").css("background-color", colurs1[each]) for each in [0..grid_size]
	# $outgrid.append $("<li />").css("background-color", colurs2[each]) for each in [0..grid_size]
	# $outgrid.append $("<li />").css("background-color", colurs3[each]) for each in [0..grid_size]
	# $outgrid.append $("<li />").css("background-color", colurs4[each]) for each in [0..grid_size]
	# $outgrid.append $("<li />").css("background-color", colurs5[each]) for each in [0..grid_size]
	# $outgrid.append $("<li />").css("background-color", colurs6[each]) for each in [0..grid_size]
	# $outgrid.append $("<li />").css("background-color", colurs7[each]) for each in [0..grid_size]
	# $outgrid.append $("<li />").css("background-color", colurs8[each]) for each in [0..grid_size]
	# $outgrid.append $("<li />").css("background-color", colurs9[each]) for each in [0..grid_size]
	# $outgrid.append $("<li />").css("background-color", colurs10[each]) for each in [0..grid_size]
	# $outgrid.append $("<li />").css("background-color", colurs11[each]) for each in [0..grid_size]
	# $outgrid.append $("<li />").css("background-color", colurs12[each]) for each in [0..grid_size]
	# $outgrid.append $("<li />").css("background-color", colurs13[each]) for each in [0..grid_size]
	# $outgrid.append $("<li />").css("background-color", colurs14[each]) for each in [0..grid_size]
	# $outgrid.append $("<li />").css("background-color", colurs15[each]) for each in [0..grid_size]
	# $outgrid.append $("<li />").css("background-color", colurs16[each]) for each in [0..grid_size]
	# $outgrid.append $("<li />").css("background-color", colurs17[each]) for each in [0..grid_size]
	# $outgrid.append $("<li />").css("background-color", colurs18[each]) for each in [0..grid_size]
	# $outgrid.append $("<li />").css("background-color", colurs19[each]) for each in [0..grid_size]
	# $outgrid.append $("<li />").css("background-color", colurs20[each]) for each in [0..grid_size]
	# $outgrid.append $("<li />").css("background-color", colurs21[each]) for each in [0..grid_size]


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

# width = $('.span8').width()-20

# update = () ->
#     bez = $('#bez').prop 'checked'
#     coL = $('#coL').prop 'checked'
#     colors = $('#colors').val().replace(/(, *| +)/g, ',').split(',')
#     steps = +$('#steps').val()
    
#     # initialize chroma.scale
#     colors = chroma.interpolate.bezier(colors) if bez
#     cs = chroma.scale(colors).mode('lab').correctLightness(coL)
    
#     # clear display
#     $('#out').html('')
    
#     # visualize scale
#     showScale cs, steps

#     serializeUrl()

# showScale = (cs, steps) ->
#     c = $('<div />')
#         .css('width', width)
#         .addClass('gradient')
#         .appendTo('#out')
#     cols = []
#     for t in (i/(steps-1) for i in [0...steps])
#         d = $ '<div />'
#         d.css
#             width: (100/steps)+'%'
#             background: cs(t).hex()
#         d.appendTo c
#         cols.push cs(t).hex()
    
#     showLightnessCurve cs, steps
    
#     # copy colors
#     $('<pre/>')
#         .html('[\'' + cols.join('\', \'') + '\']')
#         .appendTo('#out')

# showLightnessCurve = (cs, steps) ->
#     s = document.createElementNS 'http://www.w3.org/2000/svg','svg'
#     s.setAttribute 'width', width+10
#     s.setAttribute 'height', 150
#     path = document.createElementNS 'http://www.w3.org/2000/svg','path'
#     d = ''
#     x = 10
#     for t in (i/(steps-1) for i in [0...steps])
#         y = (102 - cs(t).lab()[0])*1.2
#         x += width/steps
#         if d == ''
#             d = 'M'+[10,y]
#         d += ' V'+y
#         d += ' H'+x
#     path.setAttribute 'd', d    
#     s.appendChild path
#     $('#out').append(s)

# serializeUrl = () ->
#     location.hash = '#' + 
#     	'gridcolors='+$('#gridcolors').val() + '|' +
#         'chroma-colors='+$('#colors').val() + '|' +
#         'steps='+$('#steps').val() + '|' +
#         'bez='+(if $('#bez').prop('checked') then 1 else 0) + '|' +
#         'coL='+(if $('#coL').prop('checked') then 1 else 0)
    
# unserializeUrl = () ->
#     vars = location.hash
#         .substr(1)
#         .split('|')
#     for v in (v.split('=') for v in vars)
#         [key,val] = v
#         if key == 'steps'
#             $('#steps').val(val)
#         else if key == 'colors'
#             $('#colors').val(val)
#         else if key == 'bez'
#             $('#bez').prop('checked', val == '0')
#         else if key == 'coL'
#             $('#coL').prop('checked', val == '0')  
            
# # load presets from hash
# if location.hash
#     unserializeUrl()

#update()
updategrid()
#$('input').change update
$('input').change updategrid

