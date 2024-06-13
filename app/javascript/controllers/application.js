import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }


// document.addEventListener("DOMContentLoaded", function() {
//   const toggleDescription = document.querySelector('.toggle-description');
//   const descriptionShort = document.querySelector('.description-short');
//   const descriptionFull = document.querySelector('.description-full');

//   toggleDescription.addEventListener('click', function(e) {
//     e.preventDefault();
//     if (descriptionShort.style.display === 'none') {
//       descriptionShort.style.display = 'block';
//       descriptionFull.style.display = 'none';
//       toggleDescription.textContent = 'Voir plus';
//     } else {
//       descriptionShort.style.display = 'none';
//       descriptionFull.style.display = 'block';
//       toggleDescription.textContent = 'Voir moins';
//     }
//   });
// });
