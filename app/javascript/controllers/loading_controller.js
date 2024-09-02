import { Controller } from "stimulus"

export default class extends Controller {
  connect() {
    document.addEventListener("DOMContentLoaded", this.hideSpinner)
  }

  hideSpinner() {
    const spinner = document.getElementById("loading-spinner")
    if (spinner) {
      spinner.style.display = "none"
    }
  }
}
