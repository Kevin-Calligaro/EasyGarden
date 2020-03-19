import "bootstrap";

import "../plugins/show_edit";
import "../plugins/task_show.js";
// import { cloning } from '../plugins/garden';
import { persisteData } from '../persiste';

// cloning();

import { PluginsCollidable, garden_vegetables_data } from '../plugins/garden_draggable.js';
// import { PluginsMirrors } from '../plugins/mirror.js';

PluginsCollidable();
// PluginsMirrors();



const buttontest = document.querySelector(".test-data");

buttontest.addEventListener('click', (event) => {
  // event.preventDefault();
  persisteData();
  console.log(garden_vegetables_data)
});
