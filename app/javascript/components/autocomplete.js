import GMaps from 'gmaps/gmaps.js';
function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var flatAddress = document.querySelector(".google-autocomplete");
    if (flatAddress) {
      var autocomplete = new google.maps.places.Autocomplete(flatAddress, { types: [ 'establishment' ] });
      google.maps.event.addDomListener(flatAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
