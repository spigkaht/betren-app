import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["video", "canvas", "input", "scannerDiv", "formDiv"]

  connect() {
    this.hasScanner = false;
  }

  openScanner() {
    this.scannerDivTarget.classList.remove("hidden");
    this.scannerDivTarget.classList.add("flex");
    this.formDivTarget.classList.add("hidden");
    this.formDivTarget.classList.remove("flex");
    this.startCamera();
  }

  startCamera() {
    const video = this.videoTarget;
    video.style.width = "75%";
    video.style.height = "auto";

    navigator.mediaDevices.getUserMedia({ video: { facingMode: "environment" } })
      .then(stream => {
        video.srcObject = stream;
        video.setAttribute("playsinline", true); // For iOS
        video.play();

        // Wait for the video metadata to load before setting up the canvas and scrolling
        video.addEventListener("loadedmetadata", () => {
          this.setupCanvas();
          this.scrollToBottom();
        });

        this.hasScanner = true;
        requestAnimationFrame(this.scanQRCode.bind(this));
      })
      .catch(error => {
        console.error("Error accessing camera: ", error);
      });
  }

  setupCanvas() {
    const video = this.videoTarget;
    const canvas = this.canvasTarget;

    canvas.width = video.videoWidth;
    canvas.height = video.videoHeight;
  }

  scanQRCode() {
    const video = this.videoTarget;
    const canvas = this.canvasTarget;

    if (video.readyState === video.HAVE_ENOUGH_DATA) {
      const context = canvas.getContext("2d", { willReadFrequently: true });
      context.drawImage(video, 0, 0, canvas.width, canvas.height);

      const imageData = context.getImageData(0, 0, canvas.width, canvas.height);
      const code = jsQR(imageData.data, imageData.width, imageData.height); // jsQR scan

      if (code && /^\d{7}$/.test(code.data)) {
        this.inputTarget.value = code.data; // Populate input field with QR code data
        this.stopCamera();
      }
    }

    requestAnimationFrame(this.scanQRCode.bind(this));
  }

  stopCamera() {
    const video = this.videoTarget;
    video.srcObject.getTracks().forEach(track => track.stop()); // Stop the camera
    this.scannerDivTarget.classList.add("hidden"); // Hide the scanner
    this.scannerDivTarget.classList.remove("flex");
    this.formDivTarget.classList.remove("hidden"); // Show the form again
    this.formDivTarget.classList.add("flex");
    this.hasScanner = false;
  }

  scrollToBottom() {
    window.scrollTo({ top: document.body.scrollHeight, behavior: "smooth" });
  }
}
