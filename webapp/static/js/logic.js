// Check JS is working.
console.log('WORKING.');

// Create tile layer for map background.
let lightMap = L.tileLayer('https://api.mapbox.com/styles/v1/mapbox/light-v10/tiles/{z}/{x}/{y}?access_token={accessToken}', {
	attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery (c) <a href="https://www.mapbox.com/">Mapbox</a>',
	maxZoom: 18,
	accessToken: API_KEY
});

// Create map object with center, zoom, and layer.
let map = L.map('mapid', {
  center: [30, -31],
  zoom: 3,
  layers: [lightMap]
});

// Create list of maps to use.
let baseMaps = {
  'Light Map': lightMap
};

// Add map control.
L.control.layers(baseMaps, null, {collapsed:false}).addTo(map);

// Read in our JSON data.
//console.log(DF_SET['Life Ladder']["('Afghanistan', 2010)"]);
//console.log(COUNTRIES);
console.log(TEMPS_2010.temperature.Albania);

// Add Polygon styling.
function polyStyle(feature) {
  return {
    color: getColor(feature.properties.ADMIN),
    fillColor: getColor(feature.properties.ADMIN),
    weight: 1
  };
};

function getColor(countryName) {
  if (COUNTRIES.includes(countryName)) {
		if (TEMPS_2010.temperature[countryName] > 10) {
			return '#FF0000'
		};
		if (TEMPS_2010.temperature[countryName] >= 0) {
			return '#00FF00'
		};
		if (TEMPS_2010.temperature[countryName] < 0) {
			return '#0000FF';
		};
  };
  return '#FFFFFF';
};

// Get GeoJSON data.
d3.json('data/countries.geojson').then(function(data) {

  // Create GeoJSON layer with the data.
  L.geoJson(data, {
    style: polyStyle,
    onEachFeature: function(feature, layer) {
      layer.bindPopup(feature.properties.ADMIN)
    }
  }).addTo(map);
});
