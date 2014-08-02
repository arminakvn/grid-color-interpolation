# input colors. chromajs colors only if name of the color
color1 = chroma(68.67, -13.07, -46.59, 'lab')
color2 = chroma(76.84, 20.60, 51.06, 'lab')

# grid size. still experimental. default set to 12 for using lch color model
grid_size = 12
icreament_size = 1 / grid_size

$palette = $("#pallet1")
$palette2 = $("#pallet2")
$palette3 = $("#pallet3")
$palette4 = $("#pallet4")
$palette5 = $("#pallet5")
$palette6 = $("#pallet6")
$palette7 = $("#pallet7")
$palette8 = $("#pallet8")
$palette9 = $("#pallet9")
$palette10 = $("#pallet10")
$palette11 = $("#pallet11")
$palette12 = $("#pallet12")
$palette13 = $("#pallet13")
$palette14 = $("#pallet14")
$palette15 = $("#pallet15")
$palette16 = $("#pallet16")
$palette17 = $("#pallet17")
$palette18 = $("#pallet18")
$palette19 = $("#pallet19")
$palette20 = $("#pallet20")

colurschema1 = []
colurschema2 = []
colurschema3 = []
colurschema4 = []

colurschema1.push chroma.interpolate(color1, "black", x, "lch").hex() for x in [0..1] by icreament_size
colurschema2.push chroma.interpolate("black", color2, x, "lch").hex() for x in [0..1] by icreament_size
colurschema3.push chroma.interpolate(color1, "white", x, "lch").hex() for x in [0..1] by icreament_size
colurschema4.push chroma.interpolate("white", color2, x, "lch").hex() for x in [0..1] by icreament_size


# colurs.push chroma.interpolate("black", "blue", x, "lch").hex() for x in [0..1] by 0.1

colurs1 = colurschema1
colurs2 = []
colurs3 = []
colurs4 = []
colurs5 = []
colurs6 = []
colurs7 = []
colurs8 = []
colurs9 = []
colurs10 = []
colurs11 = []
colurs12 = []
colurs13 = []
colurs14 = []
colurs15 = []
colurs16 = []
colurs17 = []
colurs18 = []
colurs19 = []
colurs20 = []

colurs2.push chroma.interpolate(colurschema3[1], colurschema2[1], x, "lch").hex() for x in [0..1] by icreament_size
colurs3.push chroma.interpolate(colurschema3[2], colurschema2[2], x, "lch").hex() for x in [0..1] by icreament_size
colurs4.push chroma.interpolate(colurschema3[3], colurschema2[3], x, "lch").hex() for x in [0..1] by icreament_size
colurs5.push chroma.interpolate(colurschema3[4], colurschema2[4], x, "lch").hex() for x in [0..1] by icreament_size
colurs6.push chroma.interpolate(colurschema3[5], colurschema2[5], x, "lch").hex() for x in [0..1] by icreament_size
colurs7.push chroma.interpolate(colurschema3[6], colurschema2[6], x, "lch").hex() for x in [0..1] by icreament_size
colurs8.push chroma.interpolate(colurschema3[7], colurschema2[7], x, "lch").hex() for x in [0..1] by icreament_size
colurs9.push chroma.interpolate(colurschema3[8], colurschema2[8], x, "lch").hex() for x in [0..1] by icreament_size
colurs10.push chroma.interpolate(colurschema3[9], colurschema2[9], x, "lch").hex() for x in [0..1] by icreament_size
colurs11.push chroma.interpolate(colurschema3[10], colurschema2[10], x, "lch").hex() for x in [0..1] by icreament_size
colurs12.push chroma.interpolate(colurschema3[11], colurschema2[11], x, "lch").hex() for x in [0..1] by icreament_size
# colurs13.push chroma.interpolate(colurschema3[12], colurschema2[12], x, "lch").hex() for x in [0..1] by icreament_size
# colurs14.push chroma.interpolate(colurschema3[13], colurschema2[13], x, "lch").hex() for x in [0..1] by icreament_size
# colurs15.push chroma.interpolate(colurschema3[14], colurschema2[14], x, "lch").hex() for x in [0..1] by icreament_size
# colurs16.push chroma.interpolate(colurschema3[15], colurschema2[15], x, "lch").hex() for x in [0..1] by icreament_size
# colurs17.push chroma.interpolate(colurschema3[16], colurschema2[16], x, "lch").hex() for x in [0..1] by icreament_size
# colurs18.push chroma.interpolate(colurschema3[17], colurschema2[17], x, "lch").hex() for x in [0..1] by icreament_size
# colurs19.push chroma.interpolate(colurschema3[18], colurschema2[18], x, "lch").hex() for x in [0..1] by icreament_size
# colurs20.push chroma.interpolate(colurschema3[19], colurschema2[19], x, "lch").hex() for x in [0..1] by icreament_size

  
$palette.append $("<li />").css("background-color", colurs1[each]) for each in [0..grid_size]
$palette2.append $("<li />").css("background-color", colurs2[each]) for each in [0..grid_size]
$palette3.append $("<li />").css("background-color", colurs3[each]) for each in [0..grid_size]
$palette4.append $("<li />").css("background-color", colurs4[each]) for each in [0..grid_size]
$palette5.append $("<li />").css("background-color", colurs5[each]) for each in [0..grid_size]
$palette6.append $("<li />").css("background-color", colurs6[each]) for each in [0..grid_size]
$palette7.append $("<li />").css("background-color", colurs7[each]) for each in [0..grid_size]
$palette8.append $("<li />").css("background-color", colurs8[each]) for each in [0..grid_size]
$palette9.append $("<li />").css("background-color", colurs9[each]) for each in [0..grid_size]
$palette10.append $("<li />").css("background-color", colurs10[each]) for each in [0..grid_size]
$palette11.append $("<li />").css("background-color", colurs11[each]) for each in [0..grid_size]
$palette12.append $("<li />").css("background-color", colurs12[each]) for each in [0..grid_size]
# $palette13.append $("<li />").css("background-color", colurs13[each]) for each in [0..grid_size]
# $palette14.append $("<li />").css("background-color", colurs14[each]) for each in [0..grid_size]
# $palette15.append $("<li />").css("background-color", colurs15[each]) for each in [0..grid_size]
# $palette16.append $("<li />").css("background-color", colurs16[each]) for each in [0..grid_size]
# $palette17.append $("<li />").css("background-color", colurs17[each]) for each in [0..grid_size]
# $palette18.append $("<li />").css("background-color", colurs18[each]) for each in [0..grid_size]
# $palette19.append $("<li />").css("background-color", colurs19[each]) for each in [0..grid_size]
# $palette20.append $("<li />").css("background-color", colurs20[each]) for each in [0..grid_size]
