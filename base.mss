/* BASE.MSS CONTENTS
 * - Landuse & landcover
 * - Water areas
 * - Water ways
 * - Administrative Boundaries
 */

/* ================================================================== */
/* LANDUSE & LANDCOVER
/* ================================================================== */

#land[zoom>=0][zoom<6],
#shoreline_300[zoom>=6][zoom<10],
#processed_p[zoom>=10] {
	polygon-fill: @land;
	polygon-gamma: 0.75;
}

#landuse_gen0[zoom>3][zoom<=9],
#landuse_gen1[zoom>9][zoom<=12],
#landuse[zoom>12] {
	[type='cemetery']          { polygon-fill: @cemetery; }
	[type='college']           { polygon-fill: @school; }
	[type='commercial']        { polygon-fill: @industrial; }
	[type='common']            { polygon-fill: @park; }
	[type='forest']            { polygon-fill: @wooded; }
	[type='golf_course']       { 
      polygon-fill: @sports;
      [zoom>9]{
        line-color: @standard_case*0.95;
		line-width: 0.5;
		[zoom>12]{line-width: 1;}
	  }
    }
	[type='grass']             { polygon-fill: @grass; polygon-opacity: 0.6; }
	[type='recreation_ground'] { polygon-fill: @grass; }
	[type='meadow']            { polygon-fill: @grass; polygon-opacity: 0.5;}
	[type='heath']             { polygon-fill: @grass; polygon-opacity: 0.5;}
	[type='farm']              { polygon-fill: @grass; polygon-opacity: 0.4;}
	[type='scrub']             { polygon-fill: @grass; }
	[type='hospital']          { polygon-fill: @hospital; }
	[type='industrial']        { polygon-fill: @industrial; }
	[type='park']              { polygon-fill: @park; }
    [type='zoo'],[type='theme_park']{      
      line-color: darken(@wooded,25%);
      line-opacity:  0.3;
      line-dasharray: 1,1;
      polygon-fill: darken(@wooded,25%);
      polygon-opacity: 0.1;
    }
    [type='garden'] { polygon-fill: @park; }
	[type='parking'] {
		polygon-fill: @parking*1.05;
		polygon-opacity: 0.9;
		[zoom>=17]{
			marker-file: url(img/icon/parking.svg);
            marker-opacity: 0.25;
            marker-allow-overlap: true;
            marker-placement: interior;
            marker-direction: auto-down;
		}
		[zoom=17]{
			marker-transform: "scale(0.3)";
		}
		[zoom>=18]{
			marker-transform: "scale(0.5)";
		}
	}
    [type = 'allotments'] {
      [zoom >= 10] { polygon-fill: @allotments; polygon-gamma: 0.65;}
    }
    [type='plant_nursery']{
      [zoom>=10 ]{polygon-fill: @allotments; polygon-gamma: 0.95;}
    }
	[type='pedestrian']      { polygon-fill: @pedestrian_fill; }
	[type='residential']     { polygon-fill: @residential; }
	[type='school']          { polygon-fill: @school; }
	[type='sports_center'], [type='stadium'], [type='pitch'] {
		polygon-fill: @sports;
		[zoom>13]{
			line-color: @standard_case*0.95;
			line-width: 0.5;
			[zoom>14]{line-width: 1;}
		}
	}
	[type='university'] { polygon-fill: @school; }
	[type='wood']       { polygon-fill: @wooded; }
	[type='playground'] {
		polygon-fill: @sports;
		[zoom>=17]{
			marker-file: url(img/icon/playground.svg);
				marker-opacity: 0.5;
				marker-clip: false;
		}
		[zoom=17]{
			marker-transform: 'scale(0.03)';
		}
		[zoom>=18]{
			marker-transform: 'scale(0.03)';
		}
	}
}

#landuse_overlays[zoom>6] {
 [type='nature_reserve'],
 [type='protected_area'],
 [type='national_park'] {
	line-color: darken(@wooded,25%);
	line-opacity:  0.3;
	line-dasharray: 1,1;
	polygon-fill: darken(@wooded,25%);
	polygon-opacity: 0.1;
	[zoom=7]   { line-width: 0.4; }
	[zoom=8]   { line-width: 0.6; }
	[zoom=9]   { line-width: 0.8; }
	[zoom=10]  { line-width: 1.0; }
	[zoom=11]  { line-width: 1.5; }
	[zoom>=12] { line-width: 2.0; }
 }
}
/* 
#landuse_overlays[type='wetland'][zoom>11] {
	[zoom>11][zoom<=14] { polygon-pattern-file:url(img/marsh-16.png); }
	[zoom>14] { polygon-pattern-file:url(img/marsh-32.png);}
}*/

/* ================================================================== */
/* BUILDINGS */
/* ================================================================== */

#buildings[zoom>=12][zoom<=16] {
	polygon-fill:@building;
	[type='church'] {
		polygon-fill: @building*0.85;
	}
	[zoom>=14] {
		line-color:darken(@building, 10%);
		line-width: 0.2;
	}
	[zoom>=16] {
		line-color:darken(@building, 20%);
		line-width: 0.4;
	}
}

// At the highest zoom levels, render buildings in fancy pseudo-3D.
// Ordering polygons by their Y-position is necessary for this effect
// so we use a separate layer that does this for us.
#buildings[zoom>=17][type != 'hedge'] {
	building-fill: @building;
	building-height: 2;
	[building_levels != null] {
		[building_levels<20]{
			building-height: '[building_levels]';
		}
		[building_levels>=20]{
			building-height: 20;
		}		
	}
}

#buildings[zoom>=17][type = 'hedge'] {
	building-fill: @wooded;
	building-height: 1.25;
}

#buildings[zoom>=17][type = 'garage'] {
	building-fill: @building*1.03;
	building-height: 0;
}


/* ================================================================== */
/* WATER AREAS
/* ================================================================== */

Map{ 
	background-color:@water;
}

/*
Areal imagery and hillshading are giving a darker color to the sea.
Here is a workaround to prevent this.
*/
/*
#background {
	[zoom=12] { polygon-fill: @water*1.007; }
	[zoom=11] { polygon-fill: @water*0.985; }
	[zoom=10] { polygon-fill: @water*1.125; }
	[zoom=9]  { polygon-fill: @water*1.125; }
	[zoom=8]  { polygon-fill: @water*1.275; }
	[zoom=7]  { polygon-fill: @water*1.275; }
	[zoom<=6] { polygon-fill: @water*1.275; }
}

#water_gen0[zoom>3][zoom<=9],
#water_gen1[zoom>9][zoom<=12],
#water[zoom>12] {
	polygon-fill: @water;
	[zoom=4]{
		polygon-fill: @water4;
	}
	[zoom=5],[zoom=6]{
		polygon-fill: @water56;
	}
	[zoom=7]{
		polygon-fill: @water7;
	}
	polygon-smooth: 0.6;
	polygon-clip: false;
}*/

#water_gen0[zoom>3][zoom<=9],
#water_gen1[zoom>9][zoom<=12],
#water[zoom>12] {
  polygon-fill: @water;
  polygon-smooth: 0.6;
  polygon-clip: false;
}

/* ================================================================== */
/* WATER WAYS
/* ================================================================== */

#waterway_low[zoom>=8][zoom<=12] {
	line-color: @water;
	[zoom=8] { line-width: 0.1; }
	[zoom=9] { line-width: 0.2; }
	[zoom=10]{ line-width: 0.4; }
	[zoom=11]{ line-width: 0.6; }
	[zoom=12]{ line-width: 0.8; }
}

#waterway_med[zoom>=13][zoom<=14] {
	line-color: @water;
	[type='river'],
	[type='canal'] {
		line-cap: round;
		line-join: round;
		[zoom=13]{ line-width: 1; }
		[zoom=14]{ line-width: 1.5; }
	}
	[type='stream'] {
		[zoom=13]{ line-width: 0.2; }
		[zoom=14]{ line-width: 0.4; }
	}
}
	
#waterway_high[zoom>=15] {
	line-color: @water;
	[type='river'],
	[type='canal'] {
		line-cap: round;
		line-join: round;
		[zoom=15]{ line-width: 2; }
		[zoom=16]{ line-width: 3; }
		[zoom=17]{ line-width: 4; }
		[zoom=18]{ line-width: 5; }
		[zoom=19]{ line-width: 6; }
		[zoom>19]{ line-width: 7; }
	}
	[type='stream'] {
		[zoom=15]{ line-width: 0.6; }
		[zoom=16]{ line-width: 0.8; }
		[zoom=17]{ line-width: 1; }
		[zoom=18]{ line-width: 1.5; }
		[zoom>18]{ line-width: 2; }
	}
	[type='ditch'],
	[type='drain'] {
		[zoom=15]{ line-width: 0.1; }
		[zoom=16]{ line-width: 0.3; }
		[zoom=17]{ line-width: 0.5; }
		[zoom=18]{ line-width: 0.7; }
		[zoom=19]{ line-width: 1; }
		[zoom>19]{ line-width: 1.5; }
	}
}

/* ================================================================== */
/* ADMINISTRATIVE BOUNDARIES
/* ================================================================== */

#admin[admin_level=2][zoom>8]::case,
#landesgrenzen[zoom<=8]::case {
	line-color: white;
	line-width:3.5;
	line-opacity: 0.4;
	//line-smooth: 1;
	//line-rasterizer: fast;
    [zoom<2]         { line-opacity: 0; }
	[zoom=2]          { line-opacity: 0.6; }
	[zoom=3]          { line-opacity: 0.45; }
	[zoom=4]          { line-opacity: 0.45; }
	[zoom<9][zoom>=5] { line-width: 5; line-opacity: 0.5;}
	[zoom>=9]         { line-width: 4; line-opacity: 0.4;}
	[zoom>=12]        { line-width: 6; }
}

#admin[admin_level=2][zoom>8]::body,
#landesgrenzen[zoom<=8]::body {
	line-color: black;
	line-width: 0.5;
	line-opacity: 0.45;
	//line-smooth: 1;
	//line-rasterizer: fast;
    [zoom<2] { line-opacity: 0; }
	[zoom=2] { line-opacity: 0.5; }
	[zoom=3] { line-opacity: 0.6; }
	[zoom=4] { line-opacity: 0.6; line-width: 0.6;}
	[zoom<9][zoom>=5] {line-opacity: 0.85; line-width: 0.7;}
	[zoom>=9] {line-opacity: 0.55; line-width: 1;}
	[zoom>=12] {line-opacity: 0.4; line-width: 1;}
	[zoom>=14] {line-width: 2;line-opacity: 0.3;}
}

#admin[admin_level=4][zoom>8]::case, /*#bundeslaender[zoom>3][zoom<=8]::case*/ {
	line-color: white;
	line-width: 1;
	line-opacity: 0.5;
	//line-smooth: 1;
	//line-rasterizer: fast;
	[zoom=2]   { line-opacity: 0.25; }
	[zoom=3]   { line-opacity: 0.3; }
	[zoom=4]   { line-opacity: 0.9; }
	[zoom>=9]  { line-width: 2; line-opacity: 0.3; }
	[zoom>=12] { line-width: 3; }
}

#admin[admin_level=4][zoom>8]::base, /*#bundeslaender[zoom>3][zoom<=8]::base*/ {
	line-color: black;
	line-width: 0.25;
	line-opacity: 0.9;
	//line-smooth: 1;
	//line-rasterizer: fast;
	[zoom=2]   { line-opacity: 0.25; }
	[zoom=3]   { line-opacity: 0.3; }
	[zoom=4]   { line-opacity: 0.4; }
	[zoom>=9]  { line-opacity: 0.5; line-width:0.4; }
	[zoom>=12] { line-opacity: 0.4; }
	[zoom>=14] { line-width: 1;line-opacity: 0.2; }
}


/* ================================================================== */
/* BARRIER POINTS
/* ================================================================== */


#barrier_points[zoom>=17][stylegroup = 'divider'] {
	marker-height: 2;
	marker-fill: #c7c7c7;
	marker-line-opacity: 0;
	marker-allow-overlap: true;
}

/* ================================================================== */
/* BARRIER LINES
/* ================================================================== */

#barrier_lines[zoom>=17][stylegroup = 'gate'] {
	line-width: 2.5;
	line-color: #aab;
	line-dasharray: 3,2;
}

#barrier_lines[zoom>=17][stylegroup = 'fence'] {
	line-width: 1.75;
	line-color: #aab;
	line-dasharray: 1,1;
}

#barrier_lines[zoom>=17][stylegroup = 'hedge'] {
	line-width: 3;
	line-color: darken(@park, 5%);
}
