// Generated by CoffeeScript 1.7.1
(function() {
  var showGrid, updategrid;

  showGrid = function(cs1, cs2, steps) {
    var $outgrid, $palettes, cl1, cl2, color1, color2, colurs, colurschema1, colurschema2, colurschema3, colurschema4, colurseq, colursstatements, grid_size, grid_size_effective, gridwidth, gridwidthpix, i, icreament_size, m, n, pallets, x, _i, _j, _k, _l, _m, _n, _o, _p, _q, _ref, _ref1, _results;
    color1 = cs1;
    color2 = cs2;
    grid_size_effective = steps;
    grid_size = grid_size_effective;
    console.log(grid_size);
    icreament_size = 1 / grid_size;
    $palettes = [];
    for (i = _i = 1, _ref = grid_size + 1; 1 <= _ref ? _i <= _ref : _i >= _ref; i = 1 <= _ref ? ++_i : --_i) {
      $palettes.push("$#palette" + ("" + i));
    }
    pallets = [];
    for (i = _j = 0; 0 <= grid_size ? _j <= grid_size : _j >= grid_size; i = 0 <= grid_size ? ++_j : --_j) {
      pallets.push('=$("#pallet' + ("" + i) + '")');
    }
    for (n = _k = 0; 0 <= grid_size ? _k <= grid_size : _k >= grid_size; n = 0 <= grid_size ? ++_k : --_k) {
      pallets[n] = $palettes[n + 1];
    }
    $outgrid = $("#outgrid");
    gridwidthpix = steps * 25;
    if (steps < 9) {
      gridwidth = gridwidthpix + 55;
    } else if (steps < 10) {
      gridwidth = gridwidthpix + 27;
    } else if (steps < 11) {
      gridwidth = gridwidthpix + 55;
    } else if (steps < 12) {
      gridwidth = gridwidthpix + 27;
    } else if (steps < 18) {
      gridwidth = gridwidthpix + 50;
    } else if (steps < 19) {
      gridwidth = gridwidthpix + 48;
    } else if (steps < 20) {
      gridwidth = gridwidthpix + 55;
    } else if (steps < 22) {
      gridwidth = gridwidthpix + 25;
    } else if (steps < 25) {
      gridwidth = gridwidthpix + 50;
    } else if (steps < 26) {
      gridwidth = gridwidthpix + 25;
    } else {
      gridwidth = gridwidthpix + 50;
    }
    $("#outgrid").css('width', gridwidth);
    console.log(gridwidth);
    colurschema1 = [];
    colurschema2 = [];
    colurschema3 = [];
    colurschema4 = [];
    for (x = _l = 0; _l <= 1; x = _l += icreament_size) {
      colurschema2.push(chroma.interpolate("black", color2, x, "lch").hex());
    }
    for (x = _m = 0; _m <= 1; x = _m += icreament_size) {
      colurschema3.push(chroma.interpolate(color1, "white", x, "lch").hex());
    }
    for (x = _n = 0; _n <= 1; x = _n += icreament_size) {
      colurschema4.push(chroma.interpolate("white", color2, x, "lch").hex());
    }
    colurs = [];
    colursstatements = [];
    for (i = _o = 1; 1 <= grid_size ? _o <= grid_size : _o >= grid_size; i = 1 <= grid_size ? ++_o : --_o) {
      colurs.push("colurs" + i);
    }
    colurs[i];
    colurseq = colurs[i] = [];
    $('#outgrid').html('');
    _results = [];
    for (x = _p = 0, _ref1 = grid_size - 1; 0 <= _ref1 ? _p <= _ref1 : _p >= _ref1; x = 0 <= _ref1 ? ++_p : --_p) {
      cl1 = colurschema3[x];
      cl2 = colurschema2[x];
      for (m = _q = 0; _q <= 1; m = _q += icreament_size) {
        $outgrid.append($("<li />").css("background-color", chroma.interpolate(cl1, cl2, m, "lch")));
      }
      _results.push($outgrid.append($("<li />").css("background-color", colurschema4)));
    }
    return _results;
  };

  updategrid = function() {
    var altcolorsgrid1, altcolorsgrid2, bez, colorsgrid1, colorsgrid2, steps;
    colorsgrid1 = $('#colorsgrid1').val();
    colorsgrid2 = $('#colorsgrid2').val();
    steps = $('#stepsgrid').val();
    bez = 'checked';
    altcolorsgrid1 = $('#colorsgrid1').val().replace(/(, *| +)/g, ',').split(',');
    altcolorsgrid2 = $('#colorsgrid2').val().replace(/(, *| +)/g, ',').split(',');
    return showGrid(colorsgrid1, colorsgrid2, steps);
  };

  updategrid();

  $('input').change(updategrid);

}).call(this);
