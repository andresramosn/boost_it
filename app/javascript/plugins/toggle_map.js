
const toggleMap = () => {
  const info = document.getElementById('show-info');
  const location = document.getElementById('location-div');
  const button = document.getElementById('toogle-map-button');
  const comment = document.getElementById('avatar-and-comment');
  console.log(comment);


  if (button) {
    button.addEventListener("click", (event) => {
      if (location.classList.contains("d-none")) {
        location.classList.remove("d-none");
        info.classList.add("d-none");
        comment.classList.remove("d-none");
        button.innerHTML = "SHOW INFO";

      } else {
        location.classList.add("d-none");
        info.classList.remove("d-none");
        comment.classList.remove("d-none");
        button.innerHTML = "SHOW MAP";
      };
    });
  };
};

export { toggleMap };
