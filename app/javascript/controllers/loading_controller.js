import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["spinner", "content"]

  connect() {
    console.log("LoadingController connected") // Confirm the controller is connected
    this.showSpinner()

    // Listen for the turbo:load event to hide the spinner when the page is fully loaded
    document.addEventListener('turbo:load', () => {
      this.hideSpinner()
    })
  }

  showSpinner() {
    this.spinnerTarget.classList.remove("hidden")
    this.contentTarget.classList.add("hidden")
    console.log("spinner showing, content hidden")
  }

  hideSpinner() {
    this.spinnerTarget.classList.add("hidden")
    this.contentTarget.classList.remove("hidden")
    console.log("spinner hidden, content loaded")
  }
}
