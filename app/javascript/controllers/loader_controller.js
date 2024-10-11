import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["loader"]

  show() {
    const loader = document.querySelector("#page-loader");
    loader.classList.remove("hidden");
    loader.classList.add("flex");

    document.querySelector("#main").classList.add("filter", "blur-sm");
  }
}
