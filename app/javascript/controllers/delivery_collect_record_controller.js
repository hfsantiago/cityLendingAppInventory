import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    
  }
  
  enable_disable() {
    //this.element.textContent = "Hello World!"
    console.log('Example');
    if (document.getElementById("delivery_collect_record_is_delivery").checked) {
      console.log('Checked');
    }else {
      console.log('Unchecked');
    }
  }
}
