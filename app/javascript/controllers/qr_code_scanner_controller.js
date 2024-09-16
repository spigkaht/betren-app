import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="qr-code-scanner"
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
    if (!this.hasScanner) return;

    const canvas = this.canvasTarget;
    const video = this.videoTarget;
    const context = canvas.getContext("2d");

    canvas.width = video.videoWidth;
    canvas.height = video.videoHeight;
    context.drawImage(video, 0, 0, canvas.width, canvas.height);

    const imageData = context.getImageData(0, 0, canvas.width, canvas.height);
    const code = jsQR(imageData.data, imageData.width, imageData.height);

    if (code && /^\d{7}$/.test(code.data)) {
      this.inputTarget.value = code.data; // Populate input field with QR code data
      this.stopCamera();
    } else {
      requestAnimationFrame(this.scanQRCode.bind(this)); // Continue scanning
    }
  }

  stopCamera() {
    const video = this.videoTarget;
    video.srcObject.getTracks().forEach(track => track.stop()); // Stop the camera
    this.scannerDivTarget.classList.add("hidden"); // Hide the scanner
    this.formDivTarget.classList.remove("hidden"); // Show the form again
    this.hasScanner = false;
  }
}