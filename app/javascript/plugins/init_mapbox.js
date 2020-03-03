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
  // map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
  //                                     mapboxgl: mapboxgl }));
};


const initMapbox = () => {
  if (mapElement) {
    const map = buildMap();
    const markers = JSON.parse(mapElement.dataset.markers);
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

// function geoFindMe() {

//   const status = document.querySelector('#status');
//   // const mapLink = document.querySelector('#map-link');

//   // mapLink.href = '';
//   // mapLink.textContent = '';

//   function success(position) {
//     const latitude  = position.coords.latitude;
//     const longitude = position.coords.longitude;
//     console.log(latitude)
//     console.log(longitude)
//     status.textContent = '';
//     return [latitude, longitude]

//     // mapLink.href = `https://www.openstreetmap.org/#map=18/${latitude}/${longitude}`;

//     // mapLink.textContent = `Latitude: ${latitude} °, Longitude: ${longitude} °`;
//   }

//   function error() {
//     status.textContent = 'Unable to retrieve your location';
//   }

//   if (!navigator.geolocation) {
//     status.textContent = 'Geolocation is not supported by your browser';
//   } else {
//     status.textContent = 'Locating…';
//     navigator.geolocation.getCurrentPosition(success, error);
//   }

// }

document.querySelector('#find-me').addEventListener('click', (event) => {
  const status = document.querySelector('#status');

  function success(position) {
    const latitude  = position.coords.latitude;
    const longitude = position.coords.longitude;
    status.textContent = '';
    const userMarker = [latitude, longitude]
    const markers = JSON.parse(mapElement.dataset.markers);
    const fullUserMarker = {
      lat: userMarker[0],
      lng: userMarker[1],
      id: 100,
      image_url: "https://via.placeholder.com/150"
    }
    markers.push(fullUserMarker)
    document.querySelector('#map').innerHTML = "";
    const map = buildMap();
    addMarkersToMap(map, markers);
    const bounds = new mapboxgl.LngLatBounds();
    [fullUserMarker].forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
    map.fitBounds(bounds, { padding: 80, maxZoom: 13 });
    document.querySelectorAll('.marker').forEach((marker) => {
      const card = document.getElementById(`shop_${marker.dataset.id}`);
      marker.addEventListener('click', (event) => {
        card.classList.toggle('highlight-card');
        card.scrollIntoView({behavior: "smooth", block: "start", inline: "nearest"});
      })
    })
  }

  function error() {
    status.textContent = 'Unable to retrieve your location';
  }

  if (!navigator.geolocation) {
    status.textContent = 'Geolocation is not supported by your browser';
  } else {
    status.textContent = 'Locating…';
    navigator.geolocation.getCurrentPosition(success, error);
  }

});

export { initMapbox };



