/* ****************************************************************** */
/* OSM BRIGHT for Imposm                                              */
/* ****************************************************************** */

/* ================================================================== */
/* FONTS
/* ================================================================== */

/* directory to load fonts from in addition to the system directories */
Map { font-directory: url('./fonts'); }

/* set up font sets for various weights and styles */
@sans_lt:           'Open Sans Regular', 'DejaVu Sans Book', 'unifont Medium';
@sans_lt_italic:    'Open Sans Italic', 'unifont Medium';
@sans:              'Open Sans Semibold', 'DejaVu Sans Book', 'unifont Medium';
@sans_italic:       'Open Sans Semibold Italic', 'unifont Medium';
@sans_bold:         'Open Sans Bold', 'DejaVu Sans Bold', 'unifont Medium';
@sans_bold_italic:  'Open Sans Bold Italic', 'DejaVu Sans Bold Italic', 'unifont Medium';

/* Some fonts are larger or smaller than others. Use this variable to
   globally increase or decrease the font sizes. */
/* Note this is only implemented for certain things so far */

@text_adjust: 0;

/* ================================================================== */
/* LANDUSE & LANDCOVER COLORS
/* ================================================================== */
 
@land:        #FFFFF5;
@water:       #7DA8D7;
@water4:      #6A88B0;
@water56:     #6A88AE;
@water7:      #6987AD;

@grass:       #E6F2C1;
@meadow:      @grass*1.05;
@beach:       #FFEEC7;
@park:        #DAF2C1;
@cemetery:    #D6DED2;
@wooded:      #C6DEAD;
@agriculture: #F2E8B6;

@building:    #E8E5E3;
@hospital:    #F2CBCB*1.16;
@school:      #FFFAE6;
@sports:      #DAF1C1;

@residential: @land * 0.975;
@commercial:  @land * 0.975;
@industrial:  @land * 0.96;
@parking:     #EEE;

/* ================================================================== */
/* ROAD COLORS
/* ================================================================== */

/* For each class of road there are three color variables:
 * - line: for lower zoomlevels when the road is represented by a
 *         single solid line.
 * - case: for higher zoomlevels, this color is for the road's
 *         casing (outline).
 * - fill: for higher zoomlevels, this color is for the road's
 *         inner fill (inline).
 */

@motorway_line:   #E65C5C;
@motorway_fill:   lighten(@motorway_line,10%);
@motorway_case:   @motorway_line * 0.9;

@trunk_line:      #E68A5C;
@trunk_fill:      lighten(@trunk_line,10%);
@trunk_case:      @trunk_line * 0.9;

@primary_line:    #FFC859;
@primary_fill:    lighten(@primary_line,1%);
@primary_case:    @primary_line * 0.9;

@secondary_line:  #FFE873;
@secondary_fill:  lighten(@secondary_line,1%);
@secondary_case:  @secondary_line * 0.9;

@standard_line:   @land * 0.85;
@standard_fill:   #fff;
@standard_case:   @land * 0.79;

@pedestrian_line: @standard_case*0.95;
@pedestrian_fill: #FAFAF5;
@pedestrian_case: @land;

@cycle_line:      @standard_line;
@cycle_fill:      #FAFAF5;
@cycle_case:      @land;

@rail_line:       #999;
@rail_fill:       #fff;
@rail_case:       @land;

@aeroway:         #ddd;

/* ================================================================== */
/* BOUNDARY COLORS
/* ================================================================== */

@admin_2:           #324;

/* ================================================================== */
/* LABEL COLORS
/* ================================================================== */

/* We set up a default halo color for places so you can edit them all
   at once or override each individually. */
@place_halo:    fadeout(#fff,34%);

@country_text:  #435;
@country_halo:  @place_halo;

@state_text:    #546;
@state_halo:    @place_halo;

@city_text:     #444;
@city_halo:     @place_halo;

@town_text:     #555;
@town_halo:     @place_halo;

@poi_text:      #888;

@road_text:     #666;
@road_halo:     #fff;

@other_text:    #777;
@other_halo:    @place_halo;

@locality_text: #aaa;
@locality_halo: @land;

/* Also used for other small places: hamlets, suburbs, localities */
@village_text: #888;
@village_halo: @place_halo;
