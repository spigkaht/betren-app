import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["contentDiv", "captionDiv"]

  toggleFields(event) {
    const selectedValue = event.target.value;

    // Show the caption div and hide the content div for 'img' and 'photo'
    if (selectedValue === "img") {
      this.contentDivTarget.classList.add("flex");
      this.contentDivTarget.classList.remove("hidden");
      this.captionDivTarget.classList.add("flex");
      this.captionDivTarget.classList.remove("hidden");
    } else if (selectedValue === "photo") {
      // Otherwise, show the content div and hide the caption div
      this.contentDivTarget.classList.add("hidden");
      this.contentDivTarget.classList.remove("flex");
      this.captionDivTarget.classList.add("flex");
      this.captionDivTarget.classList.remove("hidden");
    } else {
      this.contentDivTarget.classList.add("flex");
      this.contentDivTarget.classList.remove("hidden");
      this.captionDivTarget.classList.add("hidden");
      this.captionDivTarget.classList.remove("flex");
    }
  }
}
