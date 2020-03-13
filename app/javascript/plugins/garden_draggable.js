
// Learn more or give us feedback
// eslint-disable-next-line import/no-unresolved
import {Droppable, Plugins} from '@shopify/draggable';

export default function PluginsCollidable() {
  const containerSelector = '#Collidable .BlockLayout';
  const containers = document.querySelectorAll(containerSelector);
  const wallClass = 'CollidableWall';
  const walls = document.querySelectorAll(`.${wallClass}`);

  if (containers.length === 0) {
    return false;
  }

  const droppable = new Droppable(containers, {
    draggable: '.Block--isDraggable',
    dropzone: '.BlockWrapper--isDropzone',
    collidables: '.CollidableObstacle',
    mirror: {
      appendTo: containerSelector,
      constrainDimensions: true,
    },
    plugins: [Plugins.Collidable],
  });

  // --- Draggable events --- //
  droppable.on('collidable:in', (collidingElement) => {
    if (collidingElement.classList.contains(wallClass)) {
      walls.forEach((wall) => wall.classList.add('isColliding'));
    } else {
      collidingElement.classList.add('isColliding');
    }
  });

  droppable.on('collidable:out', ({collidingElement}) => {
    if (collidingElement.classList.contains(wallClass)) {
      walls.forEach((wall) => wall.classList.remove('isColliding'));
    } else {
      collidingElement.classList.remove('isColliding');
    }
  });

  droppable.on('droppable:start', (event) => {
  });

  droppable.on('droppable:stop', (event) => {
    const pos = event.data.dropzone.previousElementSibling.dataset.position;
    const id = event.data.dragEvent.source.dataset.id;
    const all = pos + id;
    console.log(all)
    const moving = document.querySelector('.draggable-source--is-dragging');
      if(moving.dataset.vegJsonId === "") {
    const uniqueId = Math.floor(Math.random() * (999 - 100) + 100);
    moving.dataset.vegJsonId = uniqueId };
    console.log(moving);
  });

  return droppable;

};

// export const PluginsCollidable = () => {};

export { PluginsCollidable };
