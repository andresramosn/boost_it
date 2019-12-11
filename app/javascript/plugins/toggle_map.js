
const location = document.querySelector('#location-div');
console.log(location);

const button = document.querySelector('#toogle-map');

console.log(button);

button.addEventListener("click", (event) => {
  console.log(event);
  location.style.display = "block";
});


// const toggleMap = () => {
//   button.addEventListener("click", (event) => {
//   console.log(event);
//   if (location.style === "none") {
//       location.style.display = "block";
//   } else {
//     location.style.display = "none";
//     };
//   });
// };

// export { toggleMap };



