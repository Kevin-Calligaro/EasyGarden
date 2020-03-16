// Choppe tous les bouttons de gauche
const plusButtons = document.querySelectorAll(".see-more");

// Choppe toutes les cards de droite
const cards = Array.from(document.querySelectorAll(".description-show"));

plusButtons.forEach((button) => {

  // Sur chaque button, event listener
  button.addEventListener('click', (event) => {
    // On récupére l'id, commun au button & à la card
    const taskId = button.getAttribute("vegetable_id");
    console.log(taskId);
    // On choppe la card, à partir de l'id du button
    const card = cards.find(element => element.getAttribute("task_id") === taskId)

    // Si la card de droite n'est pas displayed
    if (card.classList.contains("display-none")) {
      // On prend toutes les cards actuellement affichées
      const displayedCards = cards.filter(element => !element.classList.contains("display-none"));

      // On "supprime" (en ajoutant la class 'display-none') toutes les cards affichées
      Array.from(displayedCards).forEach(card => card.classList.add("display-none"));

      // On "affiche" notre card, en supprimant la class 'display-none'
      card.classList.remove("display-none");


    // Si la card de droite est displayed
    } else {
      // On la supprime en ajoutant la class display-none
      card.classList.add("display-none");
    }
  });
});
