const fetchPlaces = () => {
  var title = document.getElementById('tip_title');
  console.log(title);
  const category = document.getElementById('tip_category');
  console.log(category);
  const address = document.querySelector('.algolia-places');
  console.log(address);
  const photo = document.querySelector('#photo-input');
  console.log(photo);
  const fetch = () => {
    var title = document.getElementById('tip_title');
    fetch(`https://maps.googleapis.com/maps/api/place/findplacefromtext/json?input=${title.value}&inputtype=textquery&fields=photos,formatted_address,name,rating,opening_hours&key=`)
      .then(response => response.json())
      .then((data) => {
        console.log(data);
      });
  }

// const fetchPlaces = (data) => {
//   data.Search.forEach((result) => {
//     const category =
//   })

  title.addEventListener('keyup', fetch);
}





export { fetchPlaces };
