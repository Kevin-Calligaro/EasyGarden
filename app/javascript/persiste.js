

import { garden_vegetables_data } from 'plugins/garden_draggable.js';


const persisteData = () => {
  // console.log(garden_vegetables_data);
  // garden_vegetables_data.forEach((vegeArray) => {
  //   vegeArray.forEach((vege) => {
  //   console.log(vege);
  //   // console.log(JSON.parse(vege));
  //   });
  // });
// const parsedData = JSON.parse(garden_vegetables_data);
document.getElementById('data-spot').value = JSON.stringify(garden_vegetables_data);

document.forms[0].submit()

};

export { persisteData };
