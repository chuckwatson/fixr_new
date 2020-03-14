import "bootstrap";
import "../plugins/flatpickr";
import "../plugins/scrolltop";
import "../plugins/start_on_top";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
// import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

// import "../plugins/scrollbottom";

import { initMapbox } from '../plugins/init_mapbox';
initMapbox();

// $( document ).on('turbolinks:load', function() {
//   console.log("It works on each visit!")
// })

import { initStarRating } from '../plugins/init_star_rating';
initStarRating();


import { loadDynamicBannerText } from '../plugins/confirmation';
loadDynamicBannerText();

