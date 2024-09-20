import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [
    "formDiv",
    "plantNumberInput",
    "qrCodeInput",
    "customerInput",
    "plantNumberBtn",
    "qrCodeBtn",
    "customerBtn",
    "formSubmitBtn",
    "video",
    "canvas",
    "input",
    "inputDiv",
    "qrCodeCanvas"
  ]

  connect() {
  }

  showPlantNumberInput() {
    this.formDivTarget.classList.toggle("hidden");
    this.plantNumberInputTarget.classList.toggle("hidden");
    this.plantNumberInputTarget.classList.toggle("flex");
    this.qrCodeBtnTarget.classList.toggle("hidden");
    this.customerBtnTarget.classList.toggle("hidden");
    this.formSubmitBtnTarget.classList.toggle("hidden");
  }

  showScanInput() {
    this.formDivTarget.classList.toggle("hidden");
    this.qrCodeInputTarget.classList.toggle("hidden");
    this.qrCodeInputTarget.classList.toggle("flex");
    this.plantNumberBtnTarget.classList.toggle("hidden");
    this.customerBtnTarget.classList.toggle("hidden");
    this.openScanner();
  }

  showCustomerInput() {
    this.formDivTarget.classList.toggle("hidden");
    this.customerInputTarget.classList.toggle("hidden");
    this.customerInputTarget.classList.toggle("flex");
    this.plantNumberBtnTarget.classList.toggle("hidden");
    this.qrCodeBtnTarget.classList.toggle("hidden");
    this.formSubmitBtnTarget.classList.toggle("hidden");
  }

  openScanner() {
    this.formSubmitBtnTarget.classList.add("hidden");
    this.formSubmitBtnTarget.classList.remove("flex");
    this.inputDivTarget.classList.add("hidden");
    this.inputDivTarget.classList.remove("flex");
    this.qrCodeCanvasTarget.classList.add("flex");
    this.qrCodeCanvasTarget.classList.remove("hidden");
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

          const shouldScroll = this.element.dataset.qrCodeScannerScroll === "true";
          if (shouldScroll) {
            this.scrollToBottom();
          }
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
    this.qrCodeInputTarget.classList.toggle("hidden");
    this.qrCodeInputTarget.classList.toggle("flex");
    this.formSubmitBtnTarget.classList.add("flex");
    this.formSubmitBtnTarget.classList.remove("hidden");
    this.inputDivTarget.classList.add("flex");
    this.inputDivTarget.classList.remove("hidden");
    this.qrCodeCanvasTarget.classList.add("hidden");
    this.qrCodeCanvasTarget.classList.remove("flex");
    video.srcObject.getTracks().forEach(track => track.stop()); // Stop the camera
    this.hasScanner = false;
  }

  scrollToBottom() {
    window.scrollTo({ top: document.body.scrollHeight, behavior: "smooth" });
  }
}
