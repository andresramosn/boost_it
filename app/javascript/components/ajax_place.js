
function inSleep() {
  console.log("inside sleep")
  var title = document.querySelector("#tip_title")
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
  setTimeout(inSleep, 100);
}


function ajaxTitle() {

  var title = document.querySelector("#tip_title")
  title.addEventListener('change', callAjax)
}

export {ajaxTitle};
