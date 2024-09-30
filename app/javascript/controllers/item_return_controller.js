import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["returnDetailsDiv", "altDiv", "notes", "damageDiv"]

  toggleDetails(event) {
    const targetDivIndex = event.target.dataset.returndetailsdivtarget;
    const index = parseInt(targetDivIndex, 10);

    const detailsDiv = this.returnDetailsDivTargets[index];
    if (detailsDiv) {
      detailsDiv.classList.toggle("hidden");
    }
  }

  toggleNotes() {
    this.notesTarget.classList.toggle("hidden");
  }

  toggleDamage() {
    this.damageDivTarget.classList.toggle("hidden");
    this.damageDivTarget.classList.toggle("flex");
  }
}
