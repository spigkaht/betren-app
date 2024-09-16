import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["image"]

  toggle() {
    console.log("toggling")
    this.imageTarget.classList.toggle("hidden");
  }
}
