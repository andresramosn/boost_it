
const location = document.querySelector('#location-div');
console.log(location);

const button = document.querySelector('#toogle-map');

console.log(button);

button.addEventListener("click", (event) => {
  console.log(event);
  location.style.display = "block";
});


// const toggleMap = () => {
//   location.style.display = "none";
// };


// element.style.display = "";

// export { toggleMap };


