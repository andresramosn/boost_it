const hideFotoEnEspanol = () => {
  const google = document.querySelector(".api-preview")
  console.log(google)
  google.style.display = "none"
}


const remove_pic = () => {
  const inputFoto = document.querySelector(".upload-photo")
  if (inputFoto) {
    inputFoto.addEventListener('click', hideFotoEnEspanol)
  }
}

export { remove_pic }
