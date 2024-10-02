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
    "qrCodeCanvas",
    "customerInput"
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

  updateCustomerNum(event) {
    const inputField = event.target;
    const customerName = inputField.value.toLowerCase();
    const dataList = document.getElementById("customer_names");
    const options = dataList.getElementsByTagName("option");

    let selectedNum = "";
    let suggestions = [];

    // Iterate through the options to find all possible matches
    for (let option of options) {
      const optionValue = option.value.toLowerCase();

      // If the option starts with the current input, consider it as a suggestion
      if (optionValue.startsWith(customerName)) {
        suggestions.push(option);
      }
    }

    // If we have matching suggestions, show them in a custom dropdown
    if (suggestions.length > 0) {
      this.showSuggestions(inputField, suggestions);
    } else {
      this.clearSuggestions();
    }

    // If an exact match is selected, update the hidden field
    for (let option of suggestions) {
      if (option.value.toLowerCase() === customerName) {
        selectedNum = option.getAttribute("data-num");
        break;
      }
    }

    const hiddenField = this.element.querySelector(".customer-num");
    hiddenField.value = selectedNum;
  }

  showSuggestions(inputField, suggestions) {
    // Clear any existing suggestions first
    this.clearSuggestions();

    // Create a container for suggestions
    const suggestionBox = document.createElement('div');
    suggestionBox.classList.add('suggestion-box');
    suggestionBox.style.position = 'absolute';
    suggestionBox.style.left = `${inputField.offsetLeft}px`;
    suggestionBox.style.top = `${inputField.offsetTop + inputField.offsetHeight}px`;
    suggestionBox.style.zIndex = '1000';

    suggestions.forEach(option => {
      const suggestionItem = document.createElement('div');
      suggestionItem.textContent = option.value;
      suggestionItem.classList.add('suggestion-item');
      suggestionItem.style.padding = '5px';
      suggestionItem.style.cursor = 'pointer';

      // When a suggestion is clicked, auto-fill the text input and set the hidden field
      suggestionItem.addEventListener('click', () => {
        inputField.value = option.value;
        const hiddenField = this.element.querySelector(".customer-num");
        hiddenField.value = option.getAttribute("data-num");

        // Clear the suggestions after a selection is made
        this.clearSuggestions();
      });

      suggestionBox.appendChild(suggestionItem);
    });

    document.body.appendChild(suggestionBox);
  }

  clearSuggestions() {
    const existingBox = document.querySelector('.suggestion-box');
    if (existingBox) {
      existingBox.remove();
    }
  }
}
