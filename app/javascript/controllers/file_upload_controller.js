import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["fileInput", "checkBox"];

  chooseFile(event) {
    const index = event.target.dataset.index;
    const fileInput = this.fileInputTargets.find(input => input.dataset.index === index);

    if (fileInput) {
      fileInput.click();
    } else {
      console.error(`File input not found for index ${index}`);
    }
  }

  updateCheckBox(event) {
    const index = event.target.dataset.index;
    const checkBox = this.checkBoxTargets.find(check => check.dataset.index === index);

    // Check if a file is selected
    if (event.target.files.length > 0) {
      checkBox.checked = true;
    } else {
      checkBox.checked = false;
    }
  }
}
