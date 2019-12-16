
const toggleMap = () => {
  const info = document.getElementById('show-info');
  const location = document.getElementById('location-div');
  const button = document.getElementById('toogle-map');


  if (button) {
    button.addEventListener("click", (event) => {
      if (location.classList.contains("d-none")) {
        location.classList.remove("d-none")
        info.classList.add("d-none");
        // photo.classList.add("d-none");
      } else {
        location.classList.add("d-none")
        info.classList.remove("d-none");
      };
      button.classList.toggle("fa-info-circle")
      button.classList.toggle("fa-map-marked-alt")
    });
  };
};

export { toggleMap };
