import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["image"]

  toggle() {
    this.imageTarget.classList.toggle("hidden");
  }
}
