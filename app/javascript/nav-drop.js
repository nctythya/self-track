function dropdown() {
    const subMenu = document.getElementById("subMenu");
      subMenu.classList.toggle("open-menu");
}

function initDropdown() {
  const button = document.querySelector(".user_img");
  button.addEventListener('click', ()=> {
    dropdown();
  })
}


export { initDropdown }
