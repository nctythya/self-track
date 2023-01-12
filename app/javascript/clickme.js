function clickme(){
  console.log('clicked')
  document.getElementById("demo").innerHTML = "Helo world";
}

function initClickme() {
  // add the event listener to button
  const buttons = document.querySelectorAll('#clickme')
  buttons.forEach((button) => {
    button.addEventListener('click', () => {
      clickme()
    })
  })
}

export { initClickme }
