/* ==================================================================
	 ROAD & RAIL LINES
/* ================================================================== */

/* At lower zoomlevels, just show major automobile routes: motorways
and trunks. */

#roads_low[zoom>=5][zoom<=8] {
	[type='motorway'] { line-color: @motorway_line; }
	[type='trunk'] { line-color: @trunk_line; }
	[zoom=5] {
		[type='motorway'] { line-width: 0.4; }
		[type='trunk'] { line-width: 0.2; }
	}
	[zoom=6] {
		[type='motorway'] { line-width: 0.5; }
		[type='trunk'] { line-width: 0.25; }
	}
	[zoom=7] {
		[type='motorway'] { line-width: 0.6; }
		[type='trunk'] { line-width: 0.3; }
	}
	[zoom=8] {
		[type='motorway'] { line-width: 1; }
		[type='trunk'] { line-width: 0.5; }
	}
}

/*
Railway low
*/
#rail_low[zoom>=9][zoom<=10]{
	line-color: @rail_line;
	line-opacity: 0.6;
	line-width: 1;
}


/* At mid-level scales start to show primary and secondary routes
as well. */

/*road med outline*/
#roads_med::outline[zoom>=9][zoom<=10] {
	[type='primary'] {
		line-color: @primary_line*0.80;
	}
	[type='secondary'] { line-color: @secondary_line*0.80; }
	[zoom=9] {
		[type='primary']
		{ 
			line-width: 1.6;
		}
		[type='secondary']{line-width: 1.3;}
	}
	[zoom=10] {
		[type='primary'],[type='secondary']
		{ 
			line-width: 2.2;
		}
	}		
}

#roads_med::body[zoom>=9][zoom<=10] {
	[type='motorway'],
	[type='motorway_link'] {
		line-color: @motorway_line;
	}
	[type='trunk'],
	[type='trunk_link'] {
		line-color: @trunk_line;
	}
	[type='primary'] { line-color: @primary_line*0.97; }
	[type='secondary'] { line-color: @secondary_line; }
 
	[type='tertiary'] { line-color: @standard_line; }
	
	[zoom=9] {
		[type='motorway'],[type='trunk'] { line-width: 1.4; }
		[type='primary'] { line-width: 1.4; }
		[type='secondary']{ line-width: 0.9; line-opacity: 0.9 }
		[type='motorway_link'],[type='trunk_link'] { line-width: 0.9; }
	}
	[zoom=10] {
		[type='motorway'],[type='trunk'] { line-width: 1.8; }
		[type='primary'],[type='secondary'],
		[type='motorway_link'],[type='trunk_link'] { line-width: 1.8;}
	}
}

/* At higher levels the roads become more complex. We're now showing 
more than just automobile routes - railways, footways, and cycleways
come in as well.

/* Road width variables that are used in road & bridge styles */
@rdz11_maj: 1.6; @rdz11_med: 0.8; @rdz11_min: 0.4;
@rdz12_maj: 2.5; @rdz12_med: 1.2; @rdz12_min: 0.8;
@rdz13_maj: 3;   @rdz13_med: 1.5; @rdz13_min: 1;
@rdz14_maj: 4;   @rdz14_med: 2.5; @rdz14_min: 1.6;
@rdz15_maj: 6;   @rdz15_med: 4;   @rdz15_min: 2;
@rdz16_maj: 8;   @rdz16_med: 6;   @rdz16_min: 4;
@rdz17_maj: 14;  @rdz17_med: 12;  @rdz17_min: 10;
@rdz18_maj: 20;  @rdz18_med: 17;  @rdz18_min: 14;

/* ---- Casing ----------------------------------------------- */

#roads_high::outline[zoom>=11][zoom<=22],
#tunnel[render='1_outline'][zoom>=11][zoom<=22],
#bridge[render='1_outline'][zoom>=11][zoom<=22]{
	/* -- colors & styles -- */
	line-cap: round;
	[bridge=1],
	[tunnel=1] {
		line-cap: butt;
	}
	line-join: round;
	line-color: @standard_case;
	[bridge=1] { line-color: @standard_case * 0.8; }
	[type='motorway'],
	[type='motorway_link'] {
		line-color: @motorway_case;
		[bridge=1] { line-color: @motorway_case * 0.8; }
	}
	[type='trunk'],
	[type='trunk_link'] {
		line-color: @trunk_case;
		[bridge=1] { line-color: @trunk_case * 0.8; }
	}
	[type='primary'],
	[type='primary_link'] {
		line-color: @primary_case;
		[bridge=1] { line-color: @primary_case * 0.8; }
	}
	[type='secondary'],
	[type='secondary_link'] {
		line-color: @secondary_case;
		[bridge=1] { line-color: @secondary_case * 0.8; }
	}
	[stylegroup='railway'] {
		//line-color: fadeout(@land,50%);
		//line-opacity: 0;
		[bridge=1] { line-color: @standard_case * 0.8; }
	}
	[tunnel=1] { line-dasharray: 3,3; }        
	/* -- widths -- */
	[zoom=11] {
		[stylegroup='motorway'] { line-width: @rdz11_maj + 2; }
		[stylegroup='mainroad'] { line-width: @rdz11_med + 1.6; }
		[stylegroup='minorroad']{ line-width: @rdz11_min; }
		/* No minor bridges yet */
		[stylegroup='service']  { line-width: 0; }
		[stylegroup='noauto']   { line-width: 0; }
		[stylegroup='railway']  { line-width: 0; }
	}
	[zoom=12] {
		[stylegroup='motorway'] { line-width: @rdz12_maj + 2; }
		[stylegroup='mainroad'] { line-width: @rdz12_med + 2; }
		[stylegroup='minorroad']{ line-width: @rdz12_min; }
		/* No minor bridges yet */
		[stylegroup='service']  { line-width: 0; }
		[stylegroup='noauto']   { line-width: 0; }
		[stylegroup='railway']  { line-width: 0; }
	}
	[zoom=13] {
		[stylegroup='motorway'] { line-width: @rdz13_maj + 2; }
		[stylegroup='mainroad'] { line-width: @rdz13_med + 2; }
		[stylegroup='minorroad']{ line-width: @rdz13_min + 2; }
		/* No minor bridges yet */
		[stylegroup='service']  { line-width: 0; }
		[stylegroup='noauto']   { line-width: 0; }
		[stylegroup='railway']  { line-width: 0; }
	}
	[zoom=14] {
		[stylegroup='motorway'] { line-width: @rdz14_maj + 2; }
		[stylegroup='mainroad'] { line-width: @rdz14_med + 2; }
		[stylegroup='minorroad']{ line-width: @rdz14_min + 2; }
		[type='tertiary']{ line-width: @rdz14_med + 2; }
		/* No minor bridges yet */
		[stylegroup='service']  { line-width: 0; }
		[stylegroup='noauto']   { line-width: 0; }
		[stylegroup='railway']  { line-width: 0; }
	}
	[zoom=15] {
		[stylegroup='motorway'] { line-width: @rdz15_maj + 2.5; }
		[stylegroup='mainroad'] { line-width: @rdz15_med + 2; }
		[stylegroup='minorroad']{ line-width: @rdz15_min + 2; }
		[type='tertiary']{ line-width: @rdz15_med + 2; }
		[stylegroup='service']  { line-width: @rdz15_min / 3 + 2; }
		[stylegroup='noauto']   { line-width: @rdz14_min / 2.5 + 0.6;line-color: @land*1.5; }
		[stylegroup='railway']  { 
				line-width: 1.5 + 2; 
			[type='disused'] {line-color: @standard_case*1.08;}
			[type='abandoned'] { line-opacity: 0;}
				[type='tram'] {line-color: @standard_case*1.2;}
		}
	}
	[zoom=16] {
		[stylegroup='motorway'] { line-width: @rdz16_maj + 2.5; }
		[stylegroup='mainroad'] { line-width: @rdz16_med + 2.5; }
		[stylegroup='minorroad']{ line-width: @rdz16_min + 2; }
		[type='tertiary']{ line-width: @rdz16_med + 3.5; }
		[stylegroup='service']  { line-width: @rdz16_min / 3 + 2; }
		[stylegroup='noauto']   { line-width: @rdz14_min / 1 + 1;line-color: @land; }
		[stylegroup='railway']  {
			line-width: 2 + 2; 
			[type='disused'] { line-width: 2+2; line-color: @standard_case*1.08;}
			[type='abandoned'] { line-width: 2+2; line-opacity: 0.1;}
				[type='tram'] {line-color: @standard_case*1.2;}
		}
	}
	[zoom>=17] {
		[stylegroup='motorway'] { line-width: @rdz17_maj + 3; }
		[stylegroup='mainroad'] { line-width: @rdz17_med + 2.5; }
		[stylegroup='minorroad']{ line-width: @rdz17_min + 2; }
		[type='tertiary']{ line-width: @rdz17_med + 3.5; }
		[stylegroup='service']  { line-width: @rdz17_min / 3 + 2; }
		[stylegroup='noauto']   { line-width: @rdz15_min / 1 + 1; line-color: @land;}
		[stylegroup='railway']  { 
			line-width: 3 + 4; 
			[type='disused'] { line-width: 3+4; line-color: @standard_case*1.08;}
			[type='abandoned'] { line-width: 3+4; line-opacity: 0.2}
				[type='tram'] {line-color: @standard_case*1.1; line-width: 3 + 3; }
		} // 3 + 4
		//[type='disused'] { line-opacity: 0.0; line-color: black; line-width: 0;}
		//[type='abandoned'] { line-opacity: 0; line-color: black; line-width: 0;}
	}
	[zoom>=18] {
		[stylegroup='motorway'] { line-width: @rdz18_maj + 4; }
		[stylegroup='mainroad'] { line-width: @rdz18_med + 4; }
		[stylegroup='minorroad']{ line-width: @rdz18_min + 3.5; }
		[type='tertiary']{ line-width: @rdz18_min + 8.5; } 
		[stylegroup='service']  { line-width: @rdz18_min / 3 + 3.5; }
		[stylegroup='noauto']  { line-width: @rdz17_min / 4 + 1; line-color: @land;}
		[stylegroup='railway']  { line-width: 4 + 6;
			[type='disused'] { line-width: 4+6; line-color: @standard_case*1.08;}
			[type='abandoned'] { line-width: 4+5; line-opacity: 0.1}
		}
	}
}

//lines

#roads_high::body[zoom>=11][zoom<=22],
#tunnel[render='3_inline'][zoom>=11][zoom<=22],
#bridge[render='3_inline'][zoom>=11][zoom<=22]{
	/* -- colors & styles -- */
	line-color: @standard_fill;
	[type='motorway'],
	[type='motorway_link'] {
		line-color: @motorway_fill;
		[tunnel=1] { line-color: lighten(@motorway_fill, 10%); }
	}
	[type='trunk'],
	[type='trunk_link'] {
		line-color: @trunk_fill;
		[tunnel=1] { line-color: lighten(@trunk_fill, 10%); }
	}
	[type='primary'],
	[type='primary_link'] {
		line-color: @primary_fill;
		[tunnel=1] { line-color: lighten(@primary_fill, 10%); }
	}
	[type='secondary'],
	[type='secondary_link'] {
		line-color: @secondary_fill;
		[tunnel=1] { line-color: lighten(@secondary_fill, 10%); }
	}
	[stylegroup='railway'] {
		line-color: @rail_line;
		line-opacity: 0.8;
		//line-dasharray: 1,1;
		[type='subway'] { line-opacity: 0.3; }
		[type='tram'] { line-opacity: 0.3; }
		[type='disused'] { line-opacity: 0.0; }
		[type='abandoned'] { line-opacity: 0;  line-width: 0;}
	}
	[stylegroup='other_rail'][zoom<=14]{
		line-color: @rail_line;
		line-opacity: 0.3; 	
	}
	[stylegroup='other_rail'][zoom>=15]{
		line-color: @rail_line;
		line-opacity: 0.3;
		line-width: 0.5
	}
	[stylegroup='other'][zoom<=14]{
		line-opacity: 0.0;
		
	}
	[stylegroup='noauto'],
	[stylegroup='service'],
	[stylegroup='minorroad'] {
		line-width: 0;
	}
	[stylegroup='service'],
	[stylegroup='minorroad'],
	[stylegroup='mainroad'],
	[stylegroup='motorway'] {
		line-cap: round;
		line-join: round;
	}
	[stylegroup='noauto'] {
		line-join: round;
	}
	[tunnel=1] {
		line-cap: butt;
	}
	/* -- widths -- */
	[zoom=11] {
		[stylegroup='motorway'] { line-width: @rdz11_maj; }
		[stylegroup='mainroad'] { line-width: @rdz11_med; }
		[stylegroup='minorroad']{ line-width: 0; }
		[stylegroup='railway']  { line-width: 0.2; }
	}
	[zoom=12] {
		[stylegroup='motorway'] { line-width: @rdz12_maj; }
		[stylegroup='mainroad'] { line-width: @rdz12_med; }
		[stylegroup='minorroad']{ line-width: 0; }
		[stylegroup='railway']  {
				line-width: 0.6;
				line-opacity: 0.7;
				[type='tram'] {line-width:0;}
		}
	}
	[zoom=13] {
		[stylegroup='motorway'] { line-width: @rdz13_maj; }
		[stylegroup='mainroad'] { line-width: @rdz13_med; }
		[stylegroup='minorroad']{ line-width: @rdz13_min; }
		[stylegroup='service']  { line-width: @rdz13_min / 3; }
		[stylegroup='noauto']   { line-width: @rdz13_min / 4; line-dasharray: 1,1; }
		[stylegroup='railway']  { 
			line-width: 0.7; 
			line-opacity: 0.6;
			[type='disused'] { line-width: 0.6;line-dasharray: 1,1;}
			[type='abandoned'] {line-width: 0;}
			[type='tram'] {line-width:0;}
		}
	}
	[zoom=14] {
		[stylegroup='motorway'] { line-width: @rdz14_maj; }
		[stylegroup='mainroad'] { line-width: @rdz14_med; }
		[stylegroup='minorroad']{ line-width: @rdz14_min; }
		[type='tertiary']{ line-width: @rdz14_med; }
		[stylegroup='service']  { line-width: @rdz14_min / 3; }
		[stylegroup='noauto']   { line-width: @rdz14_min / 4; line-dasharray: 1,1; }
		[stylegroup='railway']  {
			line-opacity: 0.6;
			line-width: 1;
			[type='disused'] { line-width: 0.8;line-dasharray: 1,1;}
			[type='abandoned'] {line-width: 0;}
			[type='tram'] {line-color: @rail_line*1.2; line-width:0;}
		}
	}
	[zoom=15] {
		[stylegroup='motorway'] { line-width: @rdz15_maj; }
		[stylegroup='mainroad'] { line-width: @rdz15_med; }
		[stylegroup='minorroad']{ line-width: @rdz15_min; }
		[type='tertiary']{ line-width: @rdz15_med; }
		[stylegroup='service']  { line-width: @rdz15_min / 3; }
		[stylegroup='noauto']   { line-width: @rdz14_min / 2.5; line-color: @pedestrian_line*1.05;}
		[stylegroup='railway']  { 
			line-opacity: 0.6;
			line-width: 1.2;
			[type='disused'] { line-width: 0.8;line-dasharray: 1,1;}
			[type='abandoned'] {line-width: 0;}
			[type='tram'] {line-color: @rail_line*1.1;}
		}
	}
	[zoom=16] {
		[stylegroup='motorway'] { line-width: @rdz16_maj; }
		[stylegroup='mainroad'] { line-width: @rdz16_med; }
		[stylegroup='minorroad']{ line-width: @rdz16_min; }
		[type='tertiary']{ line-width: @rdz16_med + 1.5; } 
		[stylegroup='service']  { line-width: @rdz16_min / 3; }
		[stylegroup='noauto']   { line-width: @rdz14_min / 1; line-color: @pedestrian_line*1.02; }
		[stylegroup='railway']  { 
			line-width: 2; 
			line-opacity: 0.6;
			[type='disused'] { line-width: 1.5;line-dasharray: 1,1;}
			[type='abandoned'] {line-width: 0;}
			[type='tram'] {line-color: @rail_line*1.1;line-width: 1.5; }
		}
	}
	[zoom=17] {
		[stylegroup='motorway'] { line-width: @rdz17_maj; }
		[stylegroup='mainroad'] { line-width: @rdz17_med; }
		[stylegroup='minorroad']{ line-width: @rdz17_min; }
		[type='tertiary']{ line-width: @rdz17_med + 1.5; } 
		[stylegroup='service']  { line-width: @rdz17_min / 3; }
		[stylegroup='noauto']   { line-width: @rdz15_min / 1; line-color: @pedestrian_line; }
		[stylegroup='railway']  { 
			line-width: 2; 
			[type='disused'] { line-width: 1.5;line-dasharray: 1,1;}
			[type='abandoned'] {line-width: 0;}
				[type='tram'] {line-color: @rail_line*1.05;}
		}
	}
	[zoom>=18] {
		[stylegroup='motorway'] { line-width: @rdz18_maj; }
		[stylegroup='mainroad'] { line-width: @rdz18_med; }
		[stylegroup='minorroad']{ line-width: @rdz18_min; }
		[type='tertiary']{ line-width: @rdz18_min + 5.5; } 
		[stylegroup='service']  { line-width: @rdz18_min / 2; }
		[stylegroup='noauto']   { line-width: @rdz17_min / 4; line-color: @pedestrian_line }
		[stylegroup='railway']  { 
			line-width: 3; 
			[type='disused'] { line-width: 3;line-dasharray: 2,2;}
			[type='abandoned'] {line-width: 0;}
		}
	}
}




/* ---- Bridge fill for dashed lines -------------------------------- */
#tunnel[render='2_line'][zoom>=14][zoom<=22],
#bridge[render='2_line'][zoom>=14][zoom<=22]{
	/* -- colors & styles -- */
	[stylegroup='noauto'] {
		line-color: @land;
		line-width: 0;
		line-join: round;
	}
	[stylegroup='railway'] {
		line-color: @land;
		line-join: round;
	}
	/* -- widths -- */
	[zoom=14] {
		[stylegroup='noauto']   { line-width: @rdz14_min / 4 + 1; }
		[stylegroup='railway']  { line-width: 1 + 1; }
	}
	[zoom=15] {
		[stylegroup='noauto']   { line-width: @rdz15_min / 4 + 1; }
		[stylegroup='railway']  { line-width: 1.5 + 1; }
	}
	[zoom=16] {
		[stylegroup='noauto']   { line-width: @rdz16_min / 4 + 1; }
		[stylegroup='railway']  { line-width: 2 + 1; }
	}
	[zoom=17] {
		[stylegroup='noauto']   { line-width: @rdz17_min / 4 + 3; }
		[stylegroup='railway']  { line-width: 3 + 2; }
	}
	[zoom>=18] {
		[stylegroup='noauto']   { line-width: @rdz18_min / 4 + 3; }
		[stylegroup='railway']  { line-width: 4 + 3; }
	}
}

/* ---- Turning Circles --------------------------------------------- */
#turning_circle_case[zoom>=14] {
	marker-fill:@standard_fill;
	marker-line-color:@standard_case;
	marker-line-width:2;
	marker-allow-overlap:true;
}
#turning_circle_fill[zoom>=14] {
	marker-fill:@standard_fill;
	marker-line-width:0;
	marker-line-opacity:0;
	marker-allow-overlap:true;
}
#turning_circle_case,
#turning_circle_fill {
	[zoom=14] { marker-width:@rdz14_min * 1.1; }
	[zoom=15] { marker-width:@rdz15_min * 1.1; }
	[zoom=16] { marker-width:@rdz16_min * 1.1; }
	[zoom=17] { marker-width:@rdz17_min * 1.1; }
	[zoom>=18] { marker-width:@rdz18_min * 1.1; }
}

/* ================================================================== */
/* AEROWAYS
/* ================================================================== */

#aeroway[zoom>10] {
	line-color:@aeroway;
	line-cap:butt;
	line-join:miter;
	[type='runway'] {
		[zoom=10]{ line-width:1; }
		[zoom=11]{ line-width:2; }
		[zoom=12]{ line-width:3; }
		[zoom=13]{ line-width:5; }
		[zoom=14]{ line-width:7; }
		[zoom=15]{ line-width:11; }
		[zoom=16]{ line-width:15; }
		[zoom=17]{ line-width:19; }
		[zoom>17]{ line-width:23; }
	}
	[type='taxiway'] {
		[zoom=10]{ line-width:0.2; }
		[zoom=11]{ line-width:0.2; }
		[zoom=12]{ line-width:0.2; }
		[zoom=13]{ line-width:1; }
		[zoom=14]{ line-width:1.5; }
		[zoom=15]{ line-width:2; }
		[zoom=16]{ line-width:3; }
		[zoom=17]{ line-width:4; }
		[zoom>17]{ line-width:5; }
	}
}



/******************************************************************* */
