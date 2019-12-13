
const toggleMap = () => {
  const info = document.getElementById('show-info');
  const location = document.getElementById('location-div');
  const button = document.getElementById('toogle-map');


  if (button) {
    button.addEventListener("click", (event) => {
      if (location.classList.contains("d-none")) {
        button.innerHTML = "Show details"
        location.classList.remove("d-none")
        info.classList.add("d-none");
        // photo.classList.add("d-none");
      } else {
        button.innerHTML = "Show map"
        location.classList.add("d-none")
        info.classList.remove("d-none");
      };
    });
  };
};

export { toggleMap };
