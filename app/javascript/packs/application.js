import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';
import { toggleMap } from '../plugins/toggle_map';

initMapbox();

import { previewImageOnFileSelect } from '../components/photo_preview';
previewImageOnFileSelect();

toggleMap();


