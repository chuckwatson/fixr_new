import "bootstrap";
import "../plugins/flatpickr"
import "../plugins/scrolltop"
import "../plugins/start_on_top"
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
// import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import { initMapbox } from '../plugins/init_mapbox';
// import "app/views/reviews/create";

initMapbox()
