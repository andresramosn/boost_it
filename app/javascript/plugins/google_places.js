const getPlacesFromGoogle = () => {
  var title = document.getElementById('tip_title');
  fetch(`https://maps.googleapis.com/maps/api/place/findplacefromtext/json?input=${title.value}&inputtype=textquery&fields=photos,formatted_address,name,rating,opening_hours&key=`)
    .then(response => response.json())
    .then((data) => {
      console.log(data);
    });
  console.log("we are in getPlacesFromGoogle")
}


const fetchPlaces = () => {
  var title = document.getElementById('tip_title');
  const category = document.getElementById('tip_category');
  const photo = document.querySelector('#photo-input');
  if (title) {
    title.addEventListener('keyup', getPlacesFromGoogle);
  }

}





export { fetchPlaces };
