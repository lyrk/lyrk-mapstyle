Der Lyrk-Mapstyle ist ein OepnStreetMap-Kartenstyle, der auf dem [OSM-Bright Style](https://github.com/mapbox/osm-bright) aufsetzt und z.B. auf der [Unterkunftskarte](http://unterkunftskarte.de) benutzt wird.

## Installation

Der Style setzt auf der imposm-Version von OSM Bright auf, setzt also auf der Datenbankseite [imposm3](https://github.com/omniscale/imposm3) vorraus. Das Mapping-file dazu findet sich unter `imposm/mapping.json`. Die Datenbank kann also z.B. mit `imposm3 import -read ./germany-latest.osm.pbf -overwritecache -write -mapping ./imposm/mapping.json -connection postgis://localhost/osm_imposm -deployproduction` importiert werden.

Zum Editieren und Erzeugen der mapnik.xml files kann entweder [magnacarto](https://github.com/omniscale/magnacarto) oder [kosmtik](https://github.com/kosmtik/kosmtik/) verwendet werden.

### Magnacarto

Bei Magnacarto ist zu beachten, dass die Pfade zu den shape und font Verzeichnissen in der magnacarto-Konfiguration auf das Projektverzeichnis gesetzt werden sollten. Außerdem muss das XML-Output-Verzeichnis momentan auch das Projektverzeichnis gesetzt werden müssen, weil es sonst Probleme beim lesen von geojson-files gibt.

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

Folgende Shapefiles sollten heruntergeladen und im `./shape` verzeichnis ausgepackt werden:
 * http://tilemill-data.s3.amazonaws.com/osm/shoreline_300.zip
 * http://mapbox-geodata.s3.amazonaws.com/natural-earth-1.4.0/cultural/10m-admin-0-boundary-lines-land.zip
 * http://mapbox-geodata.s3.amazonaws.com/natural-earth-1.4.0/cultural/10m-admin-0-country-points.zip
 * http://data.openstreetmapdata.com/simplified-land-polygons-complete-3857.zip
 * http://data.openstreetmapdata.com/land-polygons-split-3857.zip

 ### Raster Files

 Optional können Hillshading und Satellitenbilder zur schöneren Farbgebung mit eingebunden werden. Diese Dateien Landen im `./raster` Verzeichnis.
  * [Die überarbeiteten True-Marble Satellitenbilder mit Anleiteung](https://github.com/lyrk/true-marble-edit)
  * **TODO** Hillshading TIFF