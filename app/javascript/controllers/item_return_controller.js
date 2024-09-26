import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["returnDetailsDiv", "altDiv", "notes", "damageDiv"]
  connect() {
    console.log("connected!")
  }

  toggleDetails(event) {
    const targetDivIndex = event.target.dataset.returndetailsdivtarget;
    const index = parseInt(targetDivIndex, 10);

    const detailsDiv = this.returnDetailsDivTargets[index];
    if (detailsDiv) {
      detailsDiv.classList.toggle("hidden");
    }
  }

  toggleNotes() {
    console.log("connected!")
    this.notesTarget.classList.toggle("hidden");
    console.log(this.notesTarget);
  }

  toggleDamage() {
    console.log("connected!");
    this.damageDivTarget.classList.toggle("hidden");
    this.damageDivTarget.classList.toggle("flex");
    console.log(this.damageDivTarget);
  }
}
