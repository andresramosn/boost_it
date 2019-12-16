import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initAutocomplete } from '../plugins/init_autocomplete';
import { initMapbox } from '../plugins/init_mapbox';
import { toggleMap } from '../plugins/toggle_map';
import { previewImageOnFileSelect } from '../components/photo_preview';
import { fetchPlaces } from '../plugins/fetch_places';
import { changeTabs } from '../components/tabs';

initAutocomplete();

initMapbox();

toggleMap();

previewImageOnFileSelect();

changeTabs();

fetchPlaces(); // this one has to always be the last one (ask Mire)

