import { Draggable } from '@shopify/draggable';


const initDraggable = () => {
const draggable = new Draggable(document.querySelectorAll('.garden-container'), {
  draggable:'li'
});

draggable.on('drag:start', () => console.log('drag:start'));
draggable.on('drag:move', () => console.log('drag:move'));
draggable.on('drag:stop', () => console.log('drag:stop'));

console.log('coucou')

};

export { initDraggable };
