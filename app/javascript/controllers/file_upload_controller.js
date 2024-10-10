import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["fileInput", "photoUrl", "status", "checkBox"]

  connect() {
    console.log("Connected!");
  }

  triggerFileInput() {
    this.fileInputTarget.click();  // Simulate a click on the hidden file input
  }
  
  uploadToCloudinary(event) {
    const cloudName = this.element.dataset.cloudinaryUploadCloudName;
    const uploadPreset = this.element.dataset.cloudinaryUploadUploadPreset;

    const fileInput = event.target;
    const file = fileInput.files[0];  // Get the captured file

    if (file) {
      const statusElement = this.statusTargets[this.fileInputTargets.indexOf(fileInput)];
      const photoUrlElement = this.photoUrlTargets[this.fileInputTargets.indexOf(fileInput)];

      // Update the status to show that the upload is in progress
      statusElement.textContent = "Uploading photo...";

      // Create the FormData object for Cloudinary upload
      const formData = new FormData();
      formData.append('file', file);
      formData.append('upload_preset', uploadPreset);  // Replace with your preset

      // Upload to Cloudinary using the fetch API
      fetch(`https://api.cloudinary.com/v1_1/${cloudName}/image/upload`, {
        method: 'POST',
        body: formData
      })
      .then(response => response.json())
      .then(data => {
        // Set the hidden input value to the Cloudinary URL
        photoUrlElement.value = data.secure_url;

        // Update the status to show that the upload is completed
        statusElement.textContent = "Photo uploaded successfully!";
      })
      .catch(error => {
        console.error('Error uploading to Cloudinary:', error);
        statusElement.textContent = "Upload failed!";
      });
    }
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
