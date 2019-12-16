const changeTabs = () => {

  const user_lists = document.querySelector(".user-lists");
  const shared_lists = document.querySelector(".shared-lists");

  const sharedTab = document.querySelector("#user-lists");
  const listTab = document.querySelector("#shared-lists");
  console.log(sharedTab, listTab)

  const input = document.getElementById('user-lists');
  if (input) {
    input.addEventListener('click', () => {
      user_lists.style.display = "block"
       shared_lists.style.display = "none"
      listTab.classList.remove('active');
      sharedTab.classList.add('active');


    });

  };

  const shared = document.getElementById('shared-lists');
  if (shared) {
    shared.addEventListener('click', () => {
      user_lists.style.display = "none"
      shared_lists.style.display = "block"
      listTab.classList.add('active');
      sharedTab.classList.remove('active');
    });

  };


};


export { changeTabs };
