/* LABELS.MSS CONTENTS:
 * - place names
 * - area labels
 * - waterway labels 
 */

/* Font sets are defined in palette.mss */

/* ================================================================== */
/* PLACE NAMES
/* ================================================================== */

#place::country[type='country'][zoom>=5][zoom<8] {
	text-name: '[iname]';
	text-face-name: @sans_bold;
	text-placement: point;
	text-fill: @country_text;
	text-halo-fill: @country_halo;
	text-halo-radius: 1;
	[zoom=3] {
		text-size: 10 + @text_adjust;
		text-wrap-width: 40;
	}
	[zoom=4] {
		text-size: 11 + @text_adjust;
		text-wrap-width: 50;
	}
	[zoom>4] {
		text-halo-radius: 2;
	}
	[zoom=5] {
		text-size: 12 + @text_adjust;
		text-wrap-width: 50;
		text-line-spacing: 1;
		text-name: '[iname]';
	}
	[zoom=6] {
		text-size: 13 + @text_adjust;
		text-character-spacing: 1;
		text-wrap-width: 80;
		text-line-spacing: 2;
	}
	[zoom=7] {
		text-size: 15 + @text_adjust;
		text-character-spacing: 2;
	}
}

/* ---- Cities ------------------------------------------------------ */

#place::city[type='city'][zoom>=6][zoom<=14] {
	text-name: '[iname]';
	text-face-name: @sans;
	text-placement: point;
	text-fill: @city_text;
	text-halo-fill: @city_halo;
	text-halo-radius: 2;
	text-label-position-tolerance: 20;

	[zoom=6] {
		text-min-distance: 20;
		text-size: 13;
		text-halo-radius: 1.3;
	}
	[zoom=7] {
		text-min-distance: 20;
		text-size: 13;
		text-halo-radius: 1.5;
	}
	[zoom=8] {
		text-min-distance: 5;
		text-size: 14;
		text-halo-radius: 2;
	}
	[zoom=9] {
		text-size: 15;
		text-wrap-width: 60;
	}
	[zoom=10] {
		text-size: 15;
		text-wrap-width: 70;
	}
	[zoom=11] {
		text-size: 15;
		text-character-spacing: 1;
		text-wrap-width: 80;
	}
	[zoom=12] {
		text-size: 15;
		text-character-spacing: 1;
		text-wrap-width: 100;
	}
	[zoom=13] {
		text-size: 15;
		text-character-spacing: 2;
		text-wrap-width: 200;
		text-transform: uppercase;
	}
	[zoom=14] {
		text-size: 15;
		text-character-spacing: 4;
		text-wrap-width: 300;
		text-transform: uppercase;
	}
	[zoom=15] {
		text-size: 16;
		text-character-spacing: 6;
		text-wrap-width: 400;
		text-transform: uppercase;
	}
}

/* ---- Towns ------------------------------------------------------- */

#place::town[type='town'][zoom>=9][zoom<=15] {
	text-name: '[iname]';
	text-face-name: @sans;
	text-placement: point;
	text-fill: @town_text;
	text-size: 11;
	text-halo-fill: @town_halo;
	text-halo-radius: 1.5;
	text-wrap-width: 50;
	text-label-position-tolerance: 20;

	[zoom=9] {
		text-min-distance: 15;
		text-size: 11.5;
	}
	[zoom>=10] {
		text-halo-radius:1 ;
		text-size: 12;
	}
	[zoom>=11] { text-size:12; }
	[zoom>=12] {
		text-size: 12;
		text-line-spacing: 1;
	}
	[zoom>=13] {
		text-transform: uppercase;
		text-character-spacing: 1;
		text-line-spacing: 2;
	}
	[zoom>=14] {
		text-size: 13;
		text-character-spacing: 2;
		text-line-spacing: 3;
	}
	[zoom>=15] {
		text-size: 14;
		text-character-spacing: 3;
		text-line-spacing: 4;
	}
	[zoom>=15] {
		text-size: 15;
		text-character-spacing: 4;
		text-line-spacing: 5;
	}
	[zoom>=17] {
		text-size: 16;
		text-character-spacing: 5;
		text-line-spacing: 6;
	}
}

/* ---- Other small places ------------------------------------------ */

#place::small[type='village'][zoom>=13],
#place::small[type='suburb'][zoom>=13],
#place::small[type='hamlet'][zoom>=13],
#place::small[type='neighbourhood'][zoom>=13] {
	text-name: '[iname]';
	text-face-name: @sans;
	text-placement: point;
	text-fill: @other_text;
	text-size: 11;
	text-halo-fill: @other_halo;
	text-halo-radius: 2;
	text-wrap-width: 30;
	text-avoid-edges: true;
	text-label-position-tolerance: 20;
	[zoom>=14] {
		text-size: 14;
		text-character-spacing: 1;
		text-wrap-width: 40;
		text-line-spacing: 1;
	}
	[zoom>=15] {
		text-halo-radius: 2;
		text-transform: uppercase;
		text-character-spacing: 1;
		text-wrap-width: 60; 
		text-line-spacing: 1;
	}
	[zoom>=16] {
		text-size: 12;
		text-character-spacing: 2;
		text-wrap-width: 120;
		text-line-spacing: 2;
	} 
	[zoom>=17] {
		text-size: 13; 
		text-character-spacing: 3;
		text-wrap-width: 160;
		text-line-spacing: 4;
	}
	[zoom>=18] {
		text-size: 14;
		text-character-spacing: 4;
		text-line-spacing: 6;
	}
}

#place::small[type='locality'][zoom>=15] {
	text-name: '[iname]';
	text-face-name: @sans;
	text-placement: point;
	text-fill: @locality_text;
	text-size: 9;
	text-halo-fill: @locality_halo;
	text-halo-radius: 1;
	text-wrap-width: 30;
	[zoom>=16] {
		text-size:10;
		text-wrap-width: 60;
		text-line-spacing: 1;
	}
	[zoom>=17] {
		text-size: 11;
		text-wrap-width: 120;
		text-line-spacing: 2;
	}
	[zoom>=18] {
		text-size: 12;
		text-character-spacing: 1;
		text-line-spacing: 4;
	}
}

/* ---- Continent places ------------------------------------------ */

#place_continent[type='continent'][zoom>=0][zoom<=2] {
	text-name: '[name]';
	text-face-name: @sans;
	text-fill: @locality_text;
	text-size: 9;
	text-halo-fill: @locality_halo;
	text-halo-radius: 1;
	text-wrap-width: 30;
    [zoom>=1] {
		text-size:10;
		text-wrap-width: 60;
		text-line-spacing: 1;
	}
	[zoom>=2] {
		text-size: 11;
		text-wrap-width: 120;
		text-line-spacing: 2;
	}
}

/* ---- Sea is a part of an ocean. and Ocean places ------------------------------------------ */

#place_ocean[type='ocean'][zoom>=1][zoom<5] {
	text-name: '[name]';
	text-face-name: @sans_italic;
	text-fill: @water * 0.75;
	text-halo-fill: @water*1.8;
	text-halo-radius: 1;
  	text-wrap-width: 10;
	text-size: 9;
    [zoom>=2] {
		text-size:10;
		text-wrap-width: 60;
		text-line-spacing: 1;
	}
	[zoom>=3] {
		text-size: 11;
		text-wrap-width: 120;
		text-line-spacing: 2;
	}
}


// =====================================================================
// AREA LABELS
// =====================================================================

#area_label {
  ::label { 
    // Bring in labels gradually as one zooms in, bases on polygon area
    [zoom>=10][area>102400000],
    [zoom>=11][area>25600000],
    [zoom>=13][area>1600000],
    [zoom>=14][area>320000],
    [zoom>=15][area>80000],
    [zoom>=16][area>20000],
    [zoom>=17][area>5000],
    [zoom>=18][area>=0] {
      text-name: "[name]";
      text-halo-radius: 1.5;
      text-face-name:@sans;
      text-size: 11;
      text-wrap-width:30;
      text-fill: #888;
      text-halo-fill: #fff;
      // Specific style overrides for different types of areas:
      [type='park'],[type='forest'],[type='recreation_ground'][zoom>=10] {
        text-face-name: @sans_lt_italic;
        text-fill: @park * 0.6;
        text-halo-fill: lighten(@park, 10%);
      }
      [type='nature_reserve'][zoom>10]{
        text-face-name: @sans_lt_italic;
        text-fill: @wooded * 0.6;
        text-halo-fill: lighten(@wooded, 10%);
      }
      [type='allotments'][zoom>=10] {
        text-face-name: @sans_lt_italic;
        text-fill: @park * 0.6;
        text-halo-fill: lighten(@park, 10%);
      }
      [type='plant_nursery'][zoom>=10] {
        text-face-name: @sans_lt_italic;
        text-fill: @park * 0.6;
        text-halo-fill: lighten(@park, 10%);
      }
      [type='golf_course'][zoom>=10] {
        text-fill: @sports * 0.6;
        text-halo-fill: lighten(@sports, 10%);
      }
      [type='cemetery'][zoom>=10] {
        text-fill: @cemetery * 0.6;
        text-halo-fill: lighten(@cemetery, 10%);
      }
      [type='hospital'][zoom>=10] {
        text-fill: @hospital * 0.6;
        text-halo-fill: lighten(@hospital, 10%);
      }
      [type='college'][zoom>=10],
      [type='school'][zoom>=10],
      [type='university'][zoom>=10] {
        text-fill: @school * 0.6;
        text-halo-fill: lighten(@school, 10%);
      }
      [type='water'][zoom>=10] {
        text-fill: @water * 0.6;
        text-halo-fill: lighten(@water, 10%);
      }
      [type='building'][zoom<=17]{
        text-name: '';
        text-opacity: 0;
        text-halo-opacity: 0;
      }
    }
    [zoom=15][area>1600000],
    [zoom=16][area>80000],
    [zoom=17][area>20000],
    [zoom=18][area>5000] {
      text-name: "[name]";
      text-size: 13;
      text-wrap-width: 60;
      text-character-spacing: 1;
      text-halo-radius: 2;
    }
    [zoom=16][area>1600000],
    [zoom=17][area>80000],
    [zoom=18][area>20000] {
      text-size: 15;
      text-character-spacing: 2;
      text-wrap-width: 120;
    }
    [zoom>=17][area>1600000],
    [zoom>=18][area>80000] {
      text-size: 20;
      text-character-spacing: 3;
      text-wrap-width: 180;
    }
  }
}

// =====================================================================
// POI LABELS
// =====================================================================

#poi_label[type='university'][zoom>=15],
#poi_label[type='hospital'][zoom>=16],
#poi_label[type='school'][zoom>=17],
#poi_label[type='library'][zoom>=17] {
  ::label {
	text-name: '[name]';
	text-face-name: @sans;
	text-size: 10;
	text-wrap-width: 30;
	text-fill: @poi_text;
    text-placement: point;
    text-halo-radius: 1;
  }
}

#poi_label[zoom>=15]{
  [type='university'][zoom>=15][zoom<=16]{
    marker-file: url(img/icon/university-12.png);
    marker-opacity: 0.45;
    marker-transform: "scale(1.3)";
    marker-placement: interior;
    marker-direction: auto-down;
    marker-allow-overlap: false;
    [zoom=16]{marker-transform: "scale(1.5)"; }
    [zoom=17]{ marker-transform: "scale(1.7)"; }
    [zoom>=18]{ marker-transform: "scale(2.2)";  marker-file: url(img/icon/university-18.png);}
  }
  [type='hospital'][zoom>=15][zoom<=16]{
    marker-file: url(img/icon/hospital.svg);
    marker-opacity: 0.25;
    marker-transform: "scale(0.8)";
    marker-placement: interior;
    marker-direction: auto-down;
    marker-allow-overlap: false;
    [zoom=16]{ marker-transform: "scale(1.0)"; }
    [zoom=17]{ marker-transform: "scale(1.4)"; }
    [zoom>=18]{ marker-transform: "scale(1.9)"; }
  }
  [type='school'][zoom>=15][zoom<=16]{
    marker-file: url(img/icon/school-12.png);
    marker-opacity: 0.65;
    marker-transform: "scale(0.9)";
    marker-placement: interior;
    marker-direction: auto-down;
    //marker-allow-overlap: false;
    [zoom=16]{marker-transform: "scale(1.1)"; }
    [zoom=17]{ marker-transform: "scale(1.4)"; }
    [zoom>=18]{ marker-transform: "scale(1.9)"; marker-file: url(img/icon/school-18.png); }
  }
  [type='library'][zoom>=15][zoom<=16] {
    marker-file: url(img/icon/library.svg);
    marker-opacity: 0.25;
    marker-transform: "scale(0.8)";
    marker-placement: interior;
    marker-direction: auto-down;
    [zoom=16]{marker-transform: "scale(1.0)"; }
    [zoom=17]{ marker-transform: "scale(1.4)"; }
    [zoom>=18]{ marker-transform: "scale(1.9)"; }
  }/*
  [type='parking'][zoom>=17]{
    marker-file: url(img/icon/parking.svg);
    marker-opacity: 0.25;
    marker-allow-overlap: false;
    marker-placement: interior;
    marker-direction: auto-down;
    marker-allow-overlap: false;
    [zoom=17]{ marker-transform: "scale(0.3)"; }
    [zoom>=18]{ marker-transform: "scale(0.5)"; }
  }*/
}

/* ================================================================== */
/* WATERWAY LABELS
/* ================================================================== */

#waterway_label[type='river'][zoom>=13],
#waterway_label[type='canal'][zoom>=15],
#waterway_label[type='stream'][zoom>=17] {
	text-name: '[name]';
	text-face-name: @sans_italic;
	text-fill: @water * 0.75;
	text-halo-fill: @water*1.8;
	text-halo-radius: 1;
	text-placement: line;
	text-min-distance: 300;
	text-size: 10;
	[type='river'][zoom=15],
	[type='canal'][zoom=17] {
		text-size: 11;
		text-name: '[name]';
	}
	[type='river'][zoom>=16],
	[type='canal'][zoom=18] {
		text-size: 14;
		text-name: '[name]';
		text-spacing: 300;
	}
}

/* ================================================================== */
/* ROAD LABELS
/* ================================================================== */

#motorway_label[zoom>=9][zoom<=14][reflen<=8][reflen>=1] {
	shield-name: '[ref]';
	shield-size: 9;
	shield-face-name: @sans_bold;
	shield-fill: #fff;
	shield-file: url('img/shield-motorway-1.png');
	shield-avoid-edges: true;
	[type='motorway'] {
		[reflen=1] { shield-file: url('img/shield-motorway-1.png'); }
		[reflen=2] { shield-file: url('img/shield-motorway-2.png'); }
		[reflen=3] { shield-file: url('img/shield-motorway-3.png'); }
		[reflen=4] { shield-file: url('img/shield-motorway-4.png'); }
		[reflen=5] { shield-file: url('img/shield-motorway-5.png'); }
		[reflen=6] { shield-file: url('img/shield-motorway-6.png'); }
		[reflen=7] { shield-file: url('img/shield-motorway-7.png'); }
		[reflen=8] { shield-file: url('img/shield-motorway-8.png'); }
	}
	[type='trunk'] {
		[reflen=1] { shield-file: url('img/shield-trunk-1.png'); }
		[reflen=2] { shield-file: url('img/shield-trunk-2.png'); }
		[reflen=3] { shield-file: url('img/shield-trunk-3.png'); }
		[reflen=4] { shield-file: url('img/shield-trunk-4.png'); }
		[reflen=5] { shield-file: url('img/shield-trunk-5.png'); }
		[reflen=6] { shield-file: url('img/shield-trunk-6.png'); }
		[reflen=7] { shield-file: url('img/shield-trunk-7.png'); }
		[reflen=8] { shield-file: url('img/shield-trunk-8.png'); }
	}
	[zoom=9]  { shield-min-distance: 30; }
	[zoom=10] { shield-min-distance: 50; }
	[zoom=11] { shield-min-distance: 60; }
	[zoom=12] { shield-min-distance: 80; }
	[zoom=13] { shield-min-distance: 120; }
	[zoom=14] { shield-min-distance: 180; }
}

#motorway_label[type='motorway'][zoom>9],
#motorway_label[type='trunk'][zoom>9] {
	text-name: '[name]';
	text-face-name: @sans_bold;
	text-placement: line;
	text-fill: @road_text;
	text-halo-fill: @road_halo;
	text-halo-radius: 1;
	text-min-distance: 60;
	text-size: 11;
	[zoom=11] { text-min-distance: 70; }
	[zoom=12] { text-min-distance: 80; }
	[zoom=13] { text-min-distance: 100; }
}

#mainroad_label[type='primary'][zoom>12],
#mainroad_label[type='secondary'][zoom>13],
#mainroad_label[type='tertiary'][zoom>13] {
	text-name: '[name]';
	text-face-name: @sans;
	text-placement: line;
	text-fill: @road_text;
	text-halo-fill: @road_halo;
	text-halo-radius: 1;
	text-min-distance: 60;
	text-size: 12;
	[zoom=17]  { text-size: 13; }
	[zoom>=18] { text-size: 14; }
}

#minorroad_label[zoom>14] {
	text-name: '[name]';
	text-face-name: @sans;
	text-placement: line;
	text-size: 11;
	text-fill: @road_text;
	text-halo-fill: @road_halo;
	text-halo-radius: 1;
	text-min-distance: 60;
	[zoom=17]  { text-size: 12; }
	[zoom>=18] { text-size: 13; }
}

#footwayPathTrack_label[zoom>=16] {
  ::label {
    text-name: '[name]';
    text-face-name: @sans;
    text-placement: line;
    text-size: 11;
    text-fill: @road_text;
    text-halo-fill: @road_halo;
    text-halo-radius: 1;
    text-min-distance: 60;
    text-min-path-length: 30;
    //text-horizontal-alignment: adjust;
    //text-character-spacing: 1;
    text-line-spacing: 1;
    [zoom>=17]  { 
      text-size: 12;
      text-min-distance: 40;
      text-min-path-length: 50;
      text-spacing: 400;
      text-line-spacing: 2;
    }
    [zoom>=18] { 
      text-size: 13;
      text-min-distance: 60;
      text-min-path-length: 0;
      text-spacing: 400;
      text-line-spacing: 3;
    }
  }
}

/* ================================================================== */
/* ONE-WAY ARROWS
/* ================================================================== */

#motorway_label[zoom>=16],
#mainroad_label[zoom>=16],
#minorroad_label[zoom>=16] {
	[oneway='yes'],[oneway=1],[oneway='true'],[oneway=-1]{
		marker-placement: line;
		marker-max-error: 0.5;
		marker-spacing: 200;
		[zoom=16] { marker-transform: 'scale(0.6)'; }
		[zoom=17] { marker-transform: 'scale(0.75)'; }
		
	}
	[oneway=1] { marker-file: url('img/icon/oneway.svg'); }
	[oneway=-1] { marker-file: url('img/icon/oneway-reverse.svg'); }	
}

/* ================================================================== */
/* Housenumbers
/* ================================================================== */

#addrinterpolation_label[zoom>=17] {
	line-width: 1;
	line-color: #bababa;
	line-dasharray: 4, 4;
}

/*
#housenumbers[zoom >= 17] {
  ::label {
    text-name: '[addr:housenumber]';
	text-face-name: @sans;
	text-placement: point;
	text-size: 10;
	text-wrap-width: 10;
	text-fill: @poi_text;
	text-min-distance: 3;
  }    
}
*/

#housenumber[zoom >= 17] {
  ::label {
    text-name: '[addr_housenumber]';   
    /*[addr_housename != null] {
      text-name: [addr_housenumber]; //+ "\n" + [addr_housename];
    }*/
    [name != null] {
      text-name: [addr_housenumber] + "\n" + [name];
    }
    text-placement: point;
    text-face-name: @sans;
    text-fill: @poi_text;
    text-halo-radius: 1;
    text-halo-fill: @road_halo;
    text-size: 10;
    text-wrap-width: 30; // 3.0 em
    text-line-spacing: -1.5; // -0.15 em
    //text-margin: 3; // 0.3 em
    text-min-distance: 3;
    [zoom >= 20] {
      text-size: 11;
      text-wrap-width: 22; // 2.0 em
      text-line-spacing: -1.65; // -0.15 em
      //text-margin: 3.3; // 0.3 em
      text-min-distance: 3.3;
    }
  }
}

/* ================================================================== */
/* Country Abkürzung 
/* ================================================================== */

#laender_abk[zoom<5][zoom>2][ISO_A2!='-99'] {
	text-name: '[ISO_A2]';
	text-face-name: @sans_bold;
	text-placement: point;
	text-fill: @country_text ;
	text-halo-fill: @country_halo;
	text-transform: uppercase;
	text-halo-radius: 1;
}

/* ================================================================== */
/* TRAIN STATIONS
/* ================================================================== */

#train_stations[zoom>15]{
    point-file:url('img/icon/rail-12.png');  
  [zoom>=17] { 
    point-file:url('img/icon/rail-18.png'); 
  }
}