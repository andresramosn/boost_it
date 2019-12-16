const changeTabs = () => {

  const user_lists = document.querySelector(".user-lists");
  const shared_lists = document.querySelector(".shared-lists");

  const input = document.getElementById('user-lists');
  if (input) {
    input.addEventListener('click', () => {
      user_lists.style.display = "block"

      shared_lists.style.display = "none"

    });

  };

  const shared = document.getElementById('shared-lists');
  if (shared) {
    shared.addEventListener('click', () => {
      user_lists.style.display = "none"
      shared_lists.style.display = "block"
    });

  };


};

// document.querySelector('.user-lists').classList.remove('className');

export { changeTabs };
