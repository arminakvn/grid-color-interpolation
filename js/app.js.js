// Generated by CoffeeScript 1.7.1
(function() {
  var $palette, $palette10, $palette11, $palette12, $palette13, $palette14, $palette15, $palette16, $palette17, $palette18, $palette19, $palette2, $palette20, $palette21, $palette3, $palette4, $palette5, $palette6, $palette7, $palette8, $palette9, color1, color2, colurs1, colurs10, colurs11, colurs12, colurs13, colurs14, colurs15, colurs16, colurs17, colurs18, colurs19, colurs2, colurs20, colurs21, colurs3, colurs4, colurs5, colurs6, colurs7, colurs8, colurs9, colurschema1, colurschema2, colurschema3, colurschema4, each, grid_size, grid_size_effective, icreament_size, x, _aa, _ab, _ac, _ad, _ae, _af, _ag, _ah, _ai, _aj, _ak, _al, _am, _an, _ao, _ap, _aq, _ar, _as, _at, _au, _av, _aw, _ax, _ay, _az, _i, _j, _k, _l, _m, _n, _o, _p, _q, _r, _s, _t, _u, _v, _w, _x, _y, _z;

  color1 = 'green';

  color2 = 'red';

  grid_size_effective = 20;

  grid_size = grid_size_effective;

  icreament_size = 1 / grid_size;

  $palette = $("#pallet1");

  $palette2 = $("#pallet2");

  $palette3 = $("#pallet3");

  $palette4 = $("#pallet4");

  $palette5 = $("#pallet5");

  $palette6 = $("#pallet6");

  $palette7 = $("#pallet7");

  $palette8 = $("#pallet8");

  $palette9 = $("#pallet9");

  $palette10 = $("#pallet10");

  $palette11 = $("#pallet11");

  $palette12 = $("#pallet12");

  $palette13 = $("#pallet13");

  $palette14 = $("#pallet14");

  $palette15 = $("#pallet15");

  $palette16 = $("#pallet16");

  $palette17 = $("#pallet17");

  $palette18 = $("#pallet18");

  $palette19 = $("#pallet19");

  $palette20 = $("#pallet20");

  $palette21 = $("#pallet21");

  colurschema1 = [];

  colurschema2 = [];

  colurschema3 = [];

  colurschema4 = [];

  for (x = _i = 0; _i <= 1; x = _i += icreament_size) {
    colurschema2.push(chroma.interpolate("black", color2, x, "lch").hex());
  }

  for (x = _j = 0; _j <= 1; x = _j += icreament_size) {
    colurschema3.push(chroma.interpolate(color1, "white", x, "lch").hex());
  }

  for (x = _k = 0; _k <= 1; x = _k += icreament_size) {
    colurschema4.push(chroma.interpolate("white", color2, x, "lch").hex());
  }

  colurs1 = [];

  colurs2 = [];

  colurs3 = [];

  colurs4 = [];

  colurs5 = [];

  colurs6 = [];

  colurs7 = [];

  colurs8 = [];

  colurs9 = [];

  colurs10 = [];

  colurs11 = [];

  colurs12 = [];

  colurs13 = [];

  colurs14 = [];

  colurs15 = [];

  colurs16 = [];

  colurs17 = [];

  colurs18 = [];

  colurs19 = [];

  colurs20 = [];

  colurs21 = colurschema4;

  for (x = _l = 0; _l <= 1; x = _l += icreament_size) {
    colurs1.push(chroma.interpolate(colurschema3[0], colurschema2[0], x, "lch").hex());
  }

  for (x = _m = 0; _m <= 1; x = _m += icreament_size) {
    colurs2.push(chroma.interpolate(colurschema3[1], colurschema2[1], x, "lch").hex());
  }

  for (x = _n = 0; _n <= 1; x = _n += icreament_size) {
    colurs3.push(chroma.interpolate(colurschema3[2], colurschema2[2], x, "lch").hex());
  }

  for (x = _o = 0; _o <= 1; x = _o += icreament_size) {
    colurs4.push(chroma.interpolate(colurschema3[3], colurschema2[3], x, "lch").hex());
  }

  for (x = _p = 0; _p <= 1; x = _p += icreament_size) {
    colurs5.push(chroma.interpolate(colurschema3[4], colurschema2[4], x, "lch").hex());
  }

  for (x = _q = 0; _q <= 1; x = _q += icreament_size) {
    colurs6.push(chroma.interpolate(colurschema3[5], colurschema2[5], x, "lch").hex());
  }

  for (x = _r = 0; _r <= 1; x = _r += icreament_size) {
    colurs7.push(chroma.interpolate(colurschema3[6], colurschema2[6], x, "lch").hex());
  }

  for (x = _s = 0; _s <= 1; x = _s += icreament_size) {
    colurs8.push(chroma.interpolate(colurschema3[7], colurschema2[7], x, "lch").hex());
  }

  for (x = _t = 0; _t <= 1; x = _t += icreament_size) {
    colurs9.push(chroma.interpolate(colurschema3[8], colurschema2[8], x, "lch").hex());
  }

  for (x = _u = 0; _u <= 1; x = _u += icreament_size) {
    colurs10.push(chroma.interpolate(colurschema3[9], colurschema2[9], x, "lch").hex());
  }

  for (x = _v = 0; _v <= 1; x = _v += icreament_size) {
    colurs11.push(chroma.interpolate(colurschema3[10], colurschema2[10], x, "lch").hex());
  }

  for (x = _w = 0; _w <= 1; x = _w += icreament_size) {
    colurs12.push(chroma.interpolate(colurschema3[11], colurschema2[11], x, "lch").hex());
  }

  for (x = _x = 0; _x <= 1; x = _x += icreament_size) {
    colurs13.push(chroma.interpolate(colurschema3[12], colurschema2[12], x, "lch").hex());
  }

  for (x = _y = 0; _y <= 1; x = _y += icreament_size) {
    colurs14.push(chroma.interpolate(colurschema3[13], colurschema2[13], x, "lch").hex());
  }

  for (x = _z = 0; _z <= 1; x = _z += icreament_size) {
    colurs15.push(chroma.interpolate(colurschema3[14], colurschema2[14], x, "lch").hex());
  }

  for (x = _aa = 0; _aa <= 1; x = _aa += icreament_size) {
    colurs16.push(chroma.interpolate(colurschema3[15], colurschema2[15], x, "lch").hex());
  }

  for (x = _ab = 0; _ab <= 1; x = _ab += icreament_size) {
    colurs17.push(chroma.interpolate(colurschema3[16], colurschema2[16], x, "lch").hex());
  }

  for (x = _ac = 0; _ac <= 1; x = _ac += icreament_size) {
    colurs18.push(chroma.interpolate(colurschema3[17], colurschema2[17], x, "lch").hex());
  }

  for (x = _ad = 0; _ad <= 1; x = _ad += icreament_size) {
    colurs19.push(chroma.interpolate(colurschema3[18], colurschema2[18], x, "lch").hex());
  }

  for (x = _ae = 0; _ae <= 1; x = _ae += icreament_size) {
    colurs20.push(chroma.interpolate(colurschema3[19], colurschema2[19], x, "lch").hex());
  }

  for (each = _af = 0; 0 <= grid_size ? _af <= grid_size : _af >= grid_size; each = 0 <= grid_size ? ++_af : --_af) {
    $palette.append($("<li />").css("background-color", colurs1[each]));
  }

  for (each = _ag = 0; 0 <= grid_size ? _ag <= grid_size : _ag >= grid_size; each = 0 <= grid_size ? ++_ag : --_ag) {
    $palette2.append($("<li />").css("background-color", colurs2[each]));
  }

  for (each = _ah = 0; 0 <= grid_size ? _ah <= grid_size : _ah >= grid_size; each = 0 <= grid_size ? ++_ah : --_ah) {
    $palette3.append($("<li />").css("background-color", colurs3[each]));
  }

  for (each = _ai = 0; 0 <= grid_size ? _ai <= grid_size : _ai >= grid_size; each = 0 <= grid_size ? ++_ai : --_ai) {
    $palette4.append($("<li />").css("background-color", colurs4[each]));
  }

  for (each = _aj = 0; 0 <= grid_size ? _aj <= grid_size : _aj >= grid_size; each = 0 <= grid_size ? ++_aj : --_aj) {
    $palette5.append($("<li />").css("background-color", colurs5[each]));
  }

  for (each = _ak = 0; 0 <= grid_size ? _ak <= grid_size : _ak >= grid_size; each = 0 <= grid_size ? ++_ak : --_ak) {
    $palette6.append($("<li />").css("background-color", colurs6[each]));
  }

  for (each = _al = 0; 0 <= grid_size ? _al <= grid_size : _al >= grid_size; each = 0 <= grid_size ? ++_al : --_al) {
    $palette7.append($("<li />").css("background-color", colurs7[each]));
  }

  for (each = _am = 0; 0 <= grid_size ? _am <= grid_size : _am >= grid_size; each = 0 <= grid_size ? ++_am : --_am) {
    $palette8.append($("<li />").css("background-color", colurs8[each]));
  }

  for (each = _an = 0; 0 <= grid_size ? _an <= grid_size : _an >= grid_size; each = 0 <= grid_size ? ++_an : --_an) {
    $palette9.append($("<li />").css("background-color", colurs9[each]));
  }

  for (each = _ao = 0; 0 <= grid_size ? _ao <= grid_size : _ao >= grid_size; each = 0 <= grid_size ? ++_ao : --_ao) {
    $palette10.append($("<li />").css("background-color", colurs10[each]));
  }

  for (each = _ap = 0; 0 <= grid_size ? _ap <= grid_size : _ap >= grid_size; each = 0 <= grid_size ? ++_ap : --_ap) {
    $palette11.append($("<li />").css("background-color", colurs11[each]));
  }

  for (each = _aq = 0; 0 <= grid_size ? _aq <= grid_size : _aq >= grid_size; each = 0 <= grid_size ? ++_aq : --_aq) {
    $palette12.append($("<li />").css("background-color", colurs12[each]));
  }

  for (each = _ar = 0; 0 <= grid_size ? _ar <= grid_size : _ar >= grid_size; each = 0 <= grid_size ? ++_ar : --_ar) {
    $palette13.append($("<li />").css("background-color", colurs13[each]));
  }

  for (each = _as = 0; 0 <= grid_size ? _as <= grid_size : _as >= grid_size; each = 0 <= grid_size ? ++_as : --_as) {
    $palette14.append($("<li />").css("background-color", colurs14[each]));
  }

  for (each = _at = 0; 0 <= grid_size ? _at <= grid_size : _at >= grid_size; each = 0 <= grid_size ? ++_at : --_at) {
    $palette15.append($("<li />").css("background-color", colurs15[each]));
  }

  for (each = _au = 0; 0 <= grid_size ? _au <= grid_size : _au >= grid_size; each = 0 <= grid_size ? ++_au : --_au) {
    $palette16.append($("<li />").css("background-color", colurs16[each]));
  }

  for (each = _av = 0; 0 <= grid_size ? _av <= grid_size : _av >= grid_size; each = 0 <= grid_size ? ++_av : --_av) {
    $palette17.append($("<li />").css("background-color", colurs17[each]));
  }

  for (each = _aw = 0; 0 <= grid_size ? _aw <= grid_size : _aw >= grid_size; each = 0 <= grid_size ? ++_aw : --_aw) {
    $palette18.append($("<li />").css("background-color", colurs18[each]));
  }

  for (each = _ax = 0; 0 <= grid_size ? _ax <= grid_size : _ax >= grid_size; each = 0 <= grid_size ? ++_ax : --_ax) {
    $palette19.append($("<li />").css("background-color", colurs19[each]));
  }

  for (each = _ay = 0; 0 <= grid_size ? _ay <= grid_size : _ay >= grid_size; each = 0 <= grid_size ? ++_ay : --_ay) {
    $palette20.append($("<li />").css("background-color", colurs20[each]));
  }

  for (each = _az = 0; 0 <= grid_size ? _az <= grid_size : _az >= grid_size; each = 0 <= grid_size ? ++_az : --_az) {
    $palette21.append($("<li />").css("background-color", colurs21[each]));
  }

}).call(this);
