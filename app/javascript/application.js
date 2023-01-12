// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"

import { initClickme } from "./clickme.js"

document.addEventListener('turbo:load', (e) => {
  console.log('turbo:load')
  initClickme()
})

// import "particles.js";

// particlesJS.load('container', 'particles.json', function () {
//   console.log('loaded');
// });
