const toggleMapList = () => {
  const cards = document.getElementById('lists-show-index-cards');
  const location = document.getElementById('location-div-lists-show');
  const button = document.getElementById('toogle-map-lists-show');


  if (button) {
    button.addEventListener("click", (event) => {
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

export { toggleMapList };
