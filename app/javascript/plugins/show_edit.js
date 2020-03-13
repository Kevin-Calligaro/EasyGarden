const seeMoreButton = document.querySelectorAll(".button-see");
const cards = document.querySelectorAll(".description-show");

seeMoreButton.forEach((button) => {
  button.addEventListener('click', (event) => {
    console.log(button.getAttribute("vegetable_id"));
  });
})
