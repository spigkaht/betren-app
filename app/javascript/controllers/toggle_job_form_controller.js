import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-job-form"
export default class extends Controller {
  static targets = ["formDiv", "buttonDiv"]

  toggle() {
    // Hide the button div and show the form div
    this.buttonDivTarget.classList.add("hidden");
    this.formDivTarget.classList.remove("hidden");
    this.formDivTarget.classList.add("flex");
  }
}
