# Lyrk Map Style

The Lyrk OpenStreetMap Style is based on the [OSM Bright Style](https://github.com/mapbox/osm-bright) and is used on the [Accomodation Map](http://unterkunftskarte.de), [WhereGroup-OSM-Demo-Style](https://osm-demo.wheregroup.com/karte/#14/50.7386/7.0854) and on many more. For the WhereGroup OSM demo style, there is this [overview page](https://wheregroup.com/unternehmen/aktuelles/details/wheregroup-osm-demo-dienst-wurde-aktualisiert-und-erweitert/) with all the information.

## Installation

The style is based on the imposm version of OSM Bright, thus it needs [imposm3](https://github.com/omniscale/imposm3) for importing the data. The mapping file for imposm is located under `imposm/mapping.json`. The database can be imported by running `imposm3 import -read germany-latest.osm.pbf -write -mapping imposm/mapping.json -connection postgis://localhost/osm_imposm -deployproduction`.

The mapnik.xml can be generated using [magnacarto](https://github.com/omniscale/magnacarto) or [kosmtik](https://github.com/kosmtik/kosmtik/) or [tilemill](https://github.com/tilemill-project/tilemill).

#### tested resources

This style has been tested with the following libraries:
- Mapnik: 3.0.12
- Postgresql: 13.x
- Postgis: 3.0.x
- Imposm: 0.11.0
- Magnacarto: 0.1dev-20180115-39b3cd9

_Note:_
- If a newer version of Mapnik is used, there may be rendering problems because some CartoCss rules are no longer supported.

- If there are translation problems in magnacarto, you can use the tilemill editor to create a mapnik.xml file.

### Magnacarto

The paths to the `shape` and `font` directory have to be set to the project path inside the magnacarto configuration. The XML output path has to be set to the project path or you will have problems reading the GeoJSON files.


### Kosmtik

In the `localconfig.json` a rule has to be added in order to be able to read the raster files.

	{
		"where": "Layer",
		"if": {
			"geometry": "raster"
		},
		"then": {
			"Datasource.type": "raster"
		}
	}

### Shape Files

The following files need to be downloaded and stored inside the `shape` directory:

* http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/cultural/ne_10m_admin_0_boundary_lines_land.zip
* http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/110m/cultural/ne_110m_admin_0_countries.zip
* http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/cultural/ne_10m_admin_1_states_provinces.zip
* http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/cultural/ne_10m_admin_1_states_provinces_lines.zip
* http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/cultural/ne_10m_populated_places.zip
* https://osmdata.openstreetmap.de/download/simplified-land-polygons-complete-3857.zip
* https://osmdata.openstreetmap.de/download/land-polygons-split-3857.zip

### Raster Files

Optional: hillshanding and areal imagery can be added for nicer colors. Those files need to be stored inside the `raster` directory.

* [Our improved True Marble Data](https://github.com/lyrk/true-marble-edit)
* **TODO** Hillshading TIFF

<hr/>

# Deutsche Version

Der Lyrk-Mapstyle ist ein OpenStreetMap-Kartenstyle, der auf dem [OSM-Bright Style](https://github.com/mapbox/osm-bright) aufsetzt und z.B. auf der [Unterkunftskarte](http://unterkunftskarte.de) und [WhereGroup-OSM-Demo-Style](https://osm-demo.wheregroup.com/karte/#14/50.7386/7.0854) benutzt wird. Für den WhereGroup-OSM-Demo-Style gibt es diese [Übersichtseite](https://wheregroup.com/unternehmen/aktuelles/details/wheregroup-osm-demo-dienst-wurde-aktualisiert-und-erweitert/) mit allen Informationen.

## Installation

Der Style setzt auf der imposm-Version von OSM Bright auf, setzt also auf der Datenbankseite [imposm3](https://github.com/omniscale/imposm3) voraus. Das Mappingfile dazu findet sich unter `imposm/mapping.json`. Die Datenbank kann also z.B. mit `imposm3 import -read germany-latest.osm.pbf -write -mapping imposm/mapping.json -connection postgis://localhost/osm_imposm -deployproduction` importiert werden.

Zum Editieren und Erzeugen der mapnik.xml kann entweder [magnacarto](https://github.com/omniscale/magnacarto) oder [kosmtik](https://github.com/kosmtik/kosmtik/) oder [tilemill](https://github.com/tilemill-project/tilemill) verwendet werden.

#### getestete Umgebung
    
This style has been tested with the following libraries:
- Mapnik: 3.0.12
- Postgresql: 13.x
- Postgis: 3.0.x
- Imposm: 0.11.0
- Magnacarto: 0.1dev-20180115-39b3cd9
    
_Note:_
- Wenn eine neuere Mapnik-Version genutzt wird, kann es zu Renderingproblemen kommen, da einige CartoCss-Regeln nicht mehr unterstützt werden.
    
- Wenn es zu Übersetzungsproblemen in magnacarto kommt, dann kannst du den Tilemill-Editor benutzen, um ein mapnik.xml-File zu erzeugen.

### Magnacarto

Bei Magnacarto ist zu beachten, dass die Pfade zu den `shape`- und `font`-Verzeichnissen in der magnacarto-Konfiguration auf das Projektverzeichnis gesetzt werden sollten. Außerdem muss das XML-Output-Verzeichnis momentan auf das Projektverzeichnis gesetzt werden, weil es sonst Probleme beim Lesen von GeoJSON-Dateien gibt.

### Kosmtik

Im `localconfig.json`-File solle folgende Regel eingefügt werden, damit die Rasterfiles gelesen werden können.

	{
		"where": "Layer",
		"if": {
			"geometry": "raster"
		},
		"then": {
			"Datasource.type": "raster"
		}
	}

### Shape Files

Folgende Shapefiles sollten heruntergeladen und im `shape` verzeichnis ausgepackt werden:

* http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/cultural/ne_10m_admin_0_boundary_lines_land.zip
* http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/110m/cultural/ne_110m_admin_0_countries.zip
* http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/cultural/ne_10m_admin_1_states_provinces.zip
* http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/cultural/ne_10m_admin_1_states_provinces_lines.zip
* http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/cultural/ne_10m_populated_places.zip
* https://osmdata.openstreetmap.de/download/simplified-land-polygons-complete-3857.zip
* https://osmdata.openstreetmap.de/download/land-polygons-split-3857.zip

### Raster Files

Optional können Hillshading und Satellitenbilder zur schöneren Farbgebung mit eingebunden werden. Diese Dateien gehören ins `raster` Verzeichnis.

* [Die überarbeiteten True-Marble Satellitenbilder mit Anleitung](https://github.com/lyrk/true-marble-edit)
* **TODO** Hillshading TIFF
