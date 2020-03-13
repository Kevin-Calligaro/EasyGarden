import "bootstrap";

import "../plugins/show_edit";
// import { cloning } from '../plugins/garden';
import { persisteData } from '../persiste';

// cloning();

import { PluginsCollidable } from '../plugins/garden_draggable.js';

PluginsCollidable();
persisteData();
