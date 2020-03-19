
// import {Droppable, Plugins} from '@shopify/draggable';

// export default function PluginsMirrors() {
//   const containerSelector = '#Collidable .BlockLayout';
//   const containers        = document.querySelectorAll(containerSelector);

//   const wallClass = 'CollidableWall';
//   const walls     = document.querySelectorAll(`.${wallClass}`);

//   if (containers.length === 0) {
//     return false;
//   }

//   const mirror_drag = new Droppable(containers, {
//     draggable: '.Block--isDraggable',
//     dropzone: '.BlockWrapper--isDropzone',
//     collidables: '.CollidableObstacle',
//     mirror: {
//       constrainDimensions: true,
//       cursorOffsetX: 0,
//       cursorOffsetY: 0,
//     },
//     plugins: [Plugins.Collidable],
//   });


//   mirror_drag.on('mirror:move', (event) => {

//     const movedBlock = document.querySelector('.draggable-mirror');
//     const greenArea = movedBlock.querySelector('.green-area');

//     greenArea.classList.remove('hidden');

//   });

//   return mirror_drag;
// };

// export { PluginsMirrors };
