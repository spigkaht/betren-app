import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["name"]

  updateName(event) {
    const opid = event.target.value.toUpperCase();
    const operators = JSON.parse(this.data.get("operators"));

    // Find the operator based on the OPID
    const operator = operators.find(op => op.OPID === opid);

    if (operator) {
      this.nameTarget.value = operator.OPNM;
    } else {
      this.nameTarget.value = "";
    }
  }
}
