import { Controller } from "stimulus";

// Connects to data-controller="showhide"
export default class extends Controller {
  static targets = ["input", "output"]
  connect() {
    this.outputTarget.hidden = true
  }
}