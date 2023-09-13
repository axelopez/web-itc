import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="contact"
export default class extends Controller {
  connect() {
   
      const Buttons = document.querySelectorAll('.input-effect input,textarea')
      const form = document.querySelector('.contact-form')
      const buttonform = document.querySelector('.btn-submit')
      Buttons.forEach((val) => {
        val.addEventListener('focusout', (evt) => {
          const Button = evt.target
          if (Button.value !== '') {
            Button.classList.add('hasContent')
          } else {
            Button.classList.remove('hasContent')
          }
        })
      });''
    }
}
