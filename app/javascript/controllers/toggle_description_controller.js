import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-description"
export default class extends Controller {
  static targets = ["toggle", "full", "short"]

  connect() {
  }

  updateView(event) {
    event.preventDefault();
    this.fullTarget.classList.toggle("d-none")
    this.shortTarget.classList.toggle("d-none")
    if (this.fullTarget.classList.contains("d-none")) {
       this.toggleTarget.innerText = "Voir plus"
    } else {
      this.toggleTarget.innerText = "Voir moins"
    }
  }
}
