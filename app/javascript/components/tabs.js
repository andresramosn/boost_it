const changeTabs = () => {

  const all_tips = document.querySelector(".all-tips");
  const user_lists = document.querySelector(".user-lists");
  const shared_lists = document.querySelector(".shared-lists");

  const allTips = document.querySelector("#all-tips");
  const sharedTab = document.querySelector("#user-lists");
  const listTab = document.querySelector("#shared-lists");
  console.log(sharedTab, listTab, allTips)


  const all = document.getElementById('all-tips');
  if (all) {
    all.addEventListener('click', () => {
      all_tips.style.display = "block"
      user_lists.style.display = "none"
      shared_lists.style.display = "none"
      console.log (all_tips, user_lists, shared_lists)

      allTips.classList.add('active');
      listTab.classList.remove('active');
      sharedTab.classList.remove('active');


    });

  };

  const input = document.getElementById('user-lists');
  if (input) {
      input.addEventListener('click', () => {
      all_tips.style.display = "none"
      user_lists.style.display = "block"
      shared_lists.style.display = "none"

      allTips.classList.remove('active');
      listTab.classList.remove('active');
      sharedTab.classList.add('active');


    });

  };

  const shared = document.getElementById('shared-lists');
  if (shared) {
    shared.addEventListener('click', () => {

      all_tips.style.display = "none"
      user_lists.style.display = "none"
      shared_lists.style.display = "block"


      allTips.classList.remove('active');
      listTab.classList.add('active');
      sharedTab.classList.remove('active');
      console.log(allTips, listTab, sharedTab)

    });

  };


};


export { changeTabs };
