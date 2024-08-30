import { Controller } from "@hotwired/stimulus"
import Sortable from "sortablejs"

export default class extends Controller {
  static targets = ["list"]

  connect() {
    this.sortable = Sortable.create(this.listTarget, {
      animation: 150,
      onEnd: this.end.bind(this)
    })
  }

  start() {}
  
  end(event) {
    const ids = this.sortable.toArray()
    this.saveOrder(ids)
  }

  async saveOrder(ids) {
    const url = this.data.get("url")
    const token = document.querySelector('meta[name="csrf-token"]').content

    const response = await fetch(url, {
      method: "PATCH",
      headers: {
        "Content-Type": "application/json",
        "X-CSRF-Token": token
      },
      body: JSON.stringify({ order: ids })
    })

    if (!response.ok) {
      console.error("Failed to save the order")
    }
  }
}
