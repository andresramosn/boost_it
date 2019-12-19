
function inSleep() {
  console.log("inside sleep")
  var title = document.querySelector(".google-autocomplete")
  var query = title.value
  console.log(query)
  Rails.ajax({
    url: "/tips/new",
    type: "get",
    data: query,
  })
}


function callAjax() {
  console.log("before sleep")
  setTimeout(inSleep, 50);
}


function ajaxTitle() {

  var title = document.querySelector(".google-autocomplete")
  if (title) {
    title.addEventListener('change', callAjax)
  }
}

export {ajaxTitle};
