import mapboxgl from 'mapbox-gl';
// import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';
// // [...]
// if (mapElement) {
//   // [...]
//   map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
//                                       mapboxgl: mapboxgl }));
// }

const mapElement = document.getElementById('map');

const buildMap = () => {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  return new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/kcsaba/ck6xiz8zm0jms1is210ohjkx8'
  });
};

const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    // const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // add this
    const el = document.createElement('div');
    el.className = 'marker';
    el.setAttribute('data-id', marker.id);
    el.style.backgroundImage = `url(${marker.image_url})`;
    el.style.backgroundSize = 'contain';
    el.style.width = '25px';
    el.style.height = '25px';

    // el.addEventListener('click', () => {
    //   window.alert(marker.properties.message);
    // });
    new mapboxgl.Marker(el)
      .setLngLat([ marker.lng, marker.lat ])
      .addTo(map);
  });
};

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 25, maxZoom: 15 });
};


const initMapbox = () => {
  if (mapElement) {
    const map = buildMap();
    const markers = JSON.parse(mapElement.dataset.markers);
    console.log(markers);
    addMarkersToMap(map, markers);
    fitMapToMarkers(map, markers);
    document.querySelectorAll('.marker').forEach((marker) => {
      const card = document.getElementById(`shop_${marker.dataset.id}`);
      marker.addEventListener('click', (event) => {
        card.classList.toggle('highlight-card');
        card.scrollIntoView({behavior: "smooth", block: "start", inline: "nearest"});
      })
    })
  }
};

export { initMapbox };



