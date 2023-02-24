import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.element.textContent = "Hello World!"
  }
  enable_disable(event) {
    console.log("Hello")
  }
}