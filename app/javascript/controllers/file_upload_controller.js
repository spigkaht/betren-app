import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["fileInput", "checkBox"]

  connect() {
    console.log("Connected!");

    const cloudName = this.element.dataset.cloudinaryUploadCloudName;
    const uploadPreset = this.element.dataset.cloudinaryUploadUploadPreset;

    this.cloudinaryWidget = cloudinary.createUploadWidget({
      cloudName: cloudName,
      uploadPreset: uploadPreset,
      multiple: false,
      sources: ["camera"],
      showAdvancedOptions: false,
      defaultSource: 'camera',
      cameraFacing: 'environment',
      maxImageWidth: 500,
    }, (error, result) => {
      if (!error && result && result.event === "success") {
        const photoUrl = result.info.secure_url;
        this.updateFileInput(photoUrl);
        this.updateCheckBox();
      }
    });
  }

  chooseFile(event) {
    console.log("choosing file");
    this.currentIndex = event.target.dataset.index;
    this.cloudinaryWidget.open();
  }

  updateFileInput(photoUrl) {
    console.log("updating file input");
    const input = this.fileInputTargets.find((input) => input.dataset.index === this.currentIndex);
    if (input) {
      input.value = photoUrl;
    }
  }

  updateCheckBox() {
    console.log("updating checkbox");
    console.log(this.currentIndex);
    console.log(this.checkBoxTargets);
    const checkBox = this.checkBoxTargets.find((checkbox) => checkbox.dataset.index === this.currentIndex);
    this.checkBoxTargets.find((checkbox) => console.log(checkbox.dataset.index, this.currentIndex));
    if (checkBox) {
      checkBox.checked = true;
      checkBox.disabled = false;
    }
  }
}
