import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

export default class extends Controller {
  connect() {
    flatpickr(this.element, {
      enableTime: false,
      position: "auto",
      dateFormat: "d/m/Y",
    });
  }
}
