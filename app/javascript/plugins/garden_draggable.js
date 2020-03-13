
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

  // droppable.on('droppable:start', (event) => {
  //   // console.log(event)
  //   const gardenVeggie = event.data.dragEvent.source
  //   // console.log(gardenVeggie)
  //   const gardenVeggieId = gardenVeggie.dataset.gardenVeggieId;

  //   const moving = document.querySelector('.draggable-source--is-dragging');
  //   console.log(moving)

  //   moving.dataset.gardenVeggieId = gardenVeggieId

  //   console.log(moving)
  // })


  droppable.on('droppable:stop', (event) => {

    const pos = event.data.dropzone.previousElementSibling.dataset.position; // je recup la data-position du span cible => x1y2
    const id  = event.data.dragEvent.source.dataset.id; // je recup la data-id du veg source => x1y2
    console.log(pos);
    console.log(id);
    const moving = document.querySelector('.draggable-source--is-dragging');

     // console.log(moving);

    let uniqueId

    if (moving.dataset.gardenVeggieId === undefined) {
      console.log('Setting a veg JSON id on veggie')
      uniqueId = Math.floor(Math.random() * (999 - 100) + 100);
      moving.dataset.gardenVeggieId = uniqueId
    };

    console.log(moving);
    // const myJson =[]
    // let myData = {
    //     "id" : id,
    //     "position" : pos,
    //     "jsonId" : uniqueId,
    // };

    // myJson.push( myData )

    // console.log(myJson);

  });

  return droppable;

};

// export const PluginsCollidable = () => {};

export { PluginsCollidable };
