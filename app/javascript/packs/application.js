import "bootstrap";

import "../plugins/description_edit";
import "../plugins/description_show";
// import { cloning } from '../plugins/garden';
import { persisteData } from '../persiste';

// cloning();

import { PluginsCollidable } from '../plugins/garden_draggable.js';

PluginsCollidable();
persisteData();
