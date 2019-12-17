

const copyToClipboard = () => {
  /* Get the text field */

  const copyButton = document.getElementById('copy-link-button');
  console.log(copyButton);


  if (copyButton) {
    copyButton.addEventListener("click", (event) => {

    const link = document.getElementById('my-input-dos');

    console.log(event);
    link.select();
    link.setSelectionRange(0, 99999);
    document.execCommand('copy');

    });
  };




  // link.select();
  // link.setSelectionRange(0, 99999); /*For mobile devices*/

  //  Copy the text inside the text field
  // link.execCommand("copy");

  // /* Alert the copied text */
  // alert("Copied the text: " + copyText.value);

};

export { copyToClipboard };
