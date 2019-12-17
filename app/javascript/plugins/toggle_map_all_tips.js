const toggleMapAllTips = () => {
  const cards = document.getElementById('all-tips-index-cards');
  console.log(cards);
  const location = document.getElementById('location-div-all-tips-index');
  console.log(location);
  const button = document.getElementById('toogle-map-all-tips-index');
  console.log(button);


  if (button) {
    button.addEventListener("click", (event) => {
      console.log(event);
      if (location.classList.contains("d-none")) {
        location.classList.remove("d-none")
        cards.classList.add("d-none");
        // photo.classList.add("d-none");
      } else {
        location.classList.add("d-none")
        cards.classList.remove("d-none");
      };
      button.classList.toggle("fa-info-circle")
      button.classList.toggle("fa-map-marked-alt")
    });
  };
};

export { toggleMapAllTips };
