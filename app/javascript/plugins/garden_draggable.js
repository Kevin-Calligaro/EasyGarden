
// Learn more or give us feedback
// eslint-disable-next-line import/no-unresolved
import {Droppable, Plugins} from '@shopify/draggable';

const garden_vegetables_data =[]

export default function PluginsCollidable() {
  const containerSelector = '#Collidable .BlockLayout';
  const containers        = document.querySelectorAll(containerSelector);

  const wallClass = 'CollidableWall';
  const walls     = document.querySelectorAll(`.${wallClass}`);

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

  droppable.on('droppable:start', (event) => {
    const backet = document.querySelector(".backet");
    const cible = event.data.dropzone.previousElementSibling.nextElementSibling;
    cible.id = ("needVeg");
    const cible2 = event.data.dropzone.previousElementSibling.nextElementSibling.firstElementChild;
    cible2.id = ("needVeg2");
  });

  droppable.on('droppable:stop', (event) => {
    const pos = event.data.dropzone.dataset.position; // je recup la data-position du span cible => x1y2
    console.log(event.data.dropzone)
    const id  = event.data.dragEvent.source.dataset.vegId; // je recup la data-id du veg source => x1y2
    console.log(id);
    const moving = document.querySelector('.draggable--original');


    let uniqueId = parseInt(moving.dataset.gardenVeggieId, 10);

    if (moving.dataset.gardenVeggieId === undefined) {
      uniqueId = Math.floor(Math.random() * (999 - 100) + 100);
      moving.dataset.gardenVeggieId = uniqueId
    } else {
      const toDelete = garden_vegetables_data.find( vege => vege.jsonId === uniqueId);

      garden_vegetables_data.splice(garden_vegetables_data.indexOf(toDelete), 1);
      moving.dataset.gardenVeggieId = uniqueId
    };

    let cloneSource = (event.data.dropzone.lastChild.outerHTML) // Clone the dragged vege
    const clone = document.createElement("div"); // create object
    clone.innerHTML = cloneSource; // inject html in object

    let myData = {
        "vegetable_id" : id,
        "position" : pos,
        "garden_vegetable_id" : uniqueId,
    };
    garden_vegetables_data.push( myData )
    console.log(garden_vegetables_data)


    const backet = document.querySelector(".backet"); // select sidebar
    const vegeCards = backet.querySelector("#needVeg") // find the dragged vege wraper
    const vegeSpan = backet.querySelector("#needVeg2") // find de sibling span

    vegeCards.insertBefore(clone, vegeSpan.nextSibling ); // new vege !
    vegeCards.id ="" // remove the target
    vegeSpan.id ="" // remove ""

    const dropzone = event.data.dropzone

    // setTimeout(() => {
    //   const area = dropzone.querySelector(".veggie-area");
    //   area.classList.remove("hidden");
    // },
    // 500);

    var displayVeggieArea = function(mutationsList) {
      for(var mutation of mutationsList) {
        if (mutation.type == 'childList') {
          const addedNode = mutation.addedNodes[0]
          if (addedNode) {
            const veggieArea = addedNode.querySelector('.veggie-area')
            veggieArea.classList.remove('hidden')
          }
        }
      }
    }

    const veggieDroppedObserver = new MutationObserver(displayVeggieArea)
    const config   = { childList: true }

    veggieDroppedObserver.observe(dropzone, config)
  });

  return droppable;
};

export { PluginsCollidable, garden_vegetables_data };









