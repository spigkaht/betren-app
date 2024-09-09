import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="fuel"
export default class extends Controller {
  static targets = ["fuelEntry", "fuelAdd"]

  fuelRequired(event) {
    const fuelReq = event.target.checked;

    if (fuelReq) {
      this.fuelEntryTarget.classList.toggle("hidden");
      this.fuelEntryTarget.classList.toggle("flex");
      this.fuelAddTarget.classList.toggle("hidden")
    } else {
      this.fuelEntryTarget.classList.toggle("hidden");
      this.fuelAddTarget.classList.toggle("hidden")
    }
  }
}
