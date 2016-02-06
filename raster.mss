/**
	File with Raster Layers. Hillshading and Satellite images
**/
#hillshading [zoom<12] {
	raster-scaling: bilinear;
	[zoom=11] {
		raster-opacity: 0.25;
		raster-comp-op: soft-light;
	}
	[zoom=10] {
		raster-opacity: 0.08;
		raster-comp-op: multiply;
	}
	[zoom=9] {
		raster-opacity: 0.10;
		raster-comp-op: hard-light;
	}
	[zoom<9] {
		raster-opacity: 0.15;
		raster-comp-op: hard-light;
	}
	[zoom<7] {
		raster-opacity: 0.16;
		raster-comp-op: hard-light;
	}
}

.luftbild [zoom<11][zoom>7] {  
	raster-comp-op: hard-light;
	
	[zoom=7] {
		raster-opacity: 0.40;
	}
	[zoom<=8][zoom>=7]{
		raster-opacity: 0.25;
	}
	[zoom=9]{
		raster-opacity: 0.15;
	}
	[zoom=10]{
		raster-opacity: 0.10;
	}
	raster-scaling: bilinear;
	raster-opacity: 0;
}

.luftbild [zoom<8] {
	raster-comp-op: hard-light;
	raster-scaling: bilinear; 
	raster-opacity: 0.40;
}

#naturalearth[zoom<3] {
	raster-opacity: 0.8;
	raster-scaling: lanczos; 
}