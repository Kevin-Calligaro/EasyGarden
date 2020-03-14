
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
      constrainDimensions: true,
      cursorOffsetX: -27,
      cursorOffsetY: 27,
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

  const myJson =[]
  let clone = ""
  droppable.on('droppable:start', (event) => {
    // console.log(event.dragEvent.data.originalSource.outerHTML);
    clone = (event.dragEvent.data.originalSource.outerHTML)

    // const emptyCard =
    // event.data.dropzone.innerHTML = clone
  });


  droppable.on('droppable:stop', (event) => {

    const pos = event.data.dropzone.previousElementSibling.dataset.position; // je recup la data-position du span cible => x1y2
    const id  = event.data.dragEvent.source.dataset.id; // je recup la data-id du veg source => x1y2
    //console.log(pos);
    //console.log(id);
    const moving = document.querySelector('.draggable--original');

     // console.log(moving);

    let uniqueId = parseInt(moving.dataset.gardenVeggieId, 10);

    if (moving.dataset.gardenVeggieId === undefined) {
      uniqueId = Math.floor(Math.random() * (999 - 100) + 100);
      moving.dataset.gardenVeggieId = uniqueId
    } else {
      const toDelete = myJson.find( vege => vege.jsonId === uniqueId);
      //console.log(toDelete)
      //console.log(myJson.indexOf(toDelete));
      myJson.splice(myJson.indexOf(toDelete), 1);
      moving.dataset.gardenVeggieId = uniqueId
    };

    //console.log(moving);
    let myData = {
        "id" : id,
        "position" : pos,
        "jsonId" : uniqueId,
    };

    const backet = document.querySelector(".backet");
    const vegeCards = backet.querySelectorAll(".testicule");
    // console.log(vegeCards);

      vegeCards.forEach ((card) => {
      const test = card;
      console.log(test);
      });

    myJson.push( myData )
    // console.log(myJson)

  });



  return droppable;

};

export { PluginsCollidable };
