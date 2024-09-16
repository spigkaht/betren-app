import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["video", "canvas", "input", "scannerDiv", "formDiv"]

  connect() {
    this.hasScanner = false;
  }

  openScanner() {
    this.scannerDivTarget.classList.remove("hidden");
    this.formDivTarget.classList.add("hidden");
    this.startCamera();
  }

  startCamera() {
    const video = this.videoTarget;
    navigator.mediaDevices.getUserMedia({ video: { facingMode: "environment" } })
      .then(stream => {
        video.srcObject = stream;
        video.setAttribute("playsinline", true); // For iOS
        video.play();
        this.hasScanner = true;
        requestAnimationFrame(this.scanQRCode.bind(this));
      })
      .catch(error => {
        console.error("Error accessing camera: ", error);
      });
  }

  scanQRCode() {
    const video = this.videoTarget;
    const canvas = this.canvasTarget;

    // Ensure the video is fully loaded and has enough data before scanning
    if (video.readyState === video.HAVE_ENOUGH_DATA) {
      canvas.width = video.videoWidth;
      canvas.height = video.videoHeight;
      const context = canvas.getContext("2d");
      context.drawImage(video, 0, 0, canvas.width, canvas.height);

      const imageData = context.getImageData(0, 0, canvas.width, canvas.height);
      const code = jsQR(imageData.data, imageData.width, imageData.height); // jsQR scan

      if (code && /^\d{7}$/.test(code.data)) {
        this.inputTarget.value = code.data; // Populate input field with QR code data
        this.stopCamera();
      }
    }

    // Continue scanning if no valid code has been found
    requestAnimationFrame(this.scanQRCode.bind(this));
  }

  stopCamera() {
    const video = this.videoTarget;
    video.srcObject.getTracks().forEach(track => track.stop()); // Stop the camera
    this.scannerDivTarget.classList.add("hidden"); // Hide the scanner
    this.formDivTarget.classList.remove("hidden"); // Show the form again
    this.hasScanner = false;
  }
}
