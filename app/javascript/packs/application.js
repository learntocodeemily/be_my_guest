import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
// internal imports
import { initMapbox } from '../plugins/init_mapbox.js';
import "../plugins/flatpickr"
initMapbox();

import { initStarRating } from '../plugins/init_star_rating';

initStarRating();
