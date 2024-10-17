import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["fileInput", "photoUrl", "loading", "checkBox"]

  triggerFileInput(event) {
    this.currentIndex = event.target.dataset.index;
    this.fileInputTargets.find((input) => input.dataset.index === this.currentIndex).click();
  }

  async uploadToCloudinary(event) {
    const cloudName = this.element.dataset.cloudinaryUploadCloudName;
    const uploadPreset = this.element.dataset.cloudinaryUploadUploadPreset;

    const fileInput = event.target;
    const file = fileInput.files[0];

    if (file) {
      this.currentIndex = fileInput.dataset.index;

      const resizedFile = await this.resizeImage(file, 750);
      const loadingElement = this.loadingTargets.find((loading) => loading.id === `uploadStatus${this.currentIndex}`);
      const photoUrlElement = this.photoUrlTargets[this.fileInputTargets.indexOf(fileInput)];
      const checkboxElement = this.checkBoxTarget;

      loadingElement.style.opacity = "1";
      checkboxElement.classList.add("hidden");

      const formData = new FormData();
      formData.append('file', resizedFile);
      formData.append('upload_preset', uploadPreset);

      fetch(`https://api.cloudinary.com/v1_1/${cloudName}/image/upload`, {
        method: 'POST',
        body: formData
      })
      .then(response => response.json())
      .then(data => {
        photoUrlElement.value = data.secure_url;

        loadingElement.style.opacity = "0";
        checkboxElement.classList.remove("hidden");
        this.updateCheckBox();
      })
      .catch(error => {
        console.error('Error uploading to Cloudinary:', error);
        window.alert("Upload failed!")
      });
    }
  }

  resizeImage(file, maxWidth) {
    return new Promise((resolve, reject) => {
      const img = document.createElement('img');
      const canvas = document.createElement('canvas');
      const ctx = canvas.getContext('2d');

      const reader = new FileReader();
      reader.onload = function(event) {
        img.src = event.target.result;
        img.onload = function() {
          const ratio = maxWidth / img.width;
          canvas.width = maxWidth;
          canvas.height = img.height * ratio;

          ctx.drawImage(img, 0, 0, canvas.width, canvas.height);

          canvas.toBlob((blob) => {
            resolve(new File([blob], file.name, { type: file.type }));
          }, file.type, 0.5);
        };
      };
      reader.onerror = reject;

      reader.readAsDataURL(file);
    });
  }

  updateCheckBox() {
    const checkBox = this.checkBoxTargets.find((checkbox) => checkbox.dataset.index === this.currentIndex);
    if (checkBox) {
      checkBox.checked = true;
      checkBox.disabled = false;
    }
  }
}
