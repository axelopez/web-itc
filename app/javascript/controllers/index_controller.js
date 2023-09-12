import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="index"
export default class extends Controller {
  connect() {
          console.log("La aventura comienza")
          const $ = (element) => document.getElementById(element)

      document.addEventListener('DOMContentLoaded', () => {
        let menuIsactive = false
        var menu = $('btn-ham')

        document.getElementsByTagName('body')[0].addEventListener('resize', () => {
          console.log('screen is', screen.width)
        })

        menu.addEventListener('click', (e) => {
          if (menuIsactive) {
            const nodos = [...document.getElementsByClassName('nav_element')]

            nodos.forEach((e) => {
              e.classList.remove('mobile-active')
            })
            menuIsactive = false
          } else {
            const nodos = [...document.getElementsByClassName('nav_element')]

            nodos.forEach((e) => {
              e.classList.add('mobile-active')
            })

            menuIsactive = true
          }
        })
      })

      /* Utiliti for hamburguer button */
      const btn = document.getElementById('btn-ham')
      btn.addEventListener('click', function () {
        if (this.classList.contains('active')) {
          this.classList.remove('active')
          this.classList.add('not-active')
        } else {
          this.classList.add('active')
          this.classList.remove('not-active')
        }
      })

  }
}
