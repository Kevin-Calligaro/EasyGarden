
const gardenUnits = document.querySelectorAll(".garden-units")
// console.log(gardenUnits);

const persisteData = () => {
  gardenUnits.forEach((units) => {
    addEventListener("dragover", (event) => {
    });
  // console.log(units)
  document.addEventListener("dragstart", ( event ) => {
        // Stocke une référence sur l'objet glissable
        event.dataset.position = ("coucou");

    }, false);
  });
};

  function dragstart_handler(ev) {
   console.log("dragStart");
   // Change the source element's background color to signify drag has started
   ev.currentTarget.style.border = "dashed";
   // Set the drag's format and data. Use the event target's id for the data
   ev.dataTransfer.setData("text/plain", ev.target.id);
  }




export { persisteData };
