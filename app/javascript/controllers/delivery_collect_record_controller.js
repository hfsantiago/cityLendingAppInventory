import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    
  }
  
  enable_disable() {
    //this.element.textContent = "Hello World!"
    console.log('Example');
    if (document.getElementById("delivery_collect_record_is_delivery").checked) {
      console.log('Checked');
      document.getElementById("delivery_collect_record_nombre_recibe").removeAttribute("disabled");
      document.getElementById("delivery_collect_record_nombre_devuelve").setAttribute("disabled", "");
      document.getElementById("delivery_collect_record_devolucion_observaciones").setAttribute("disabled", "");
      document.getElementById("delivery_collect_record_devolucion_estado_equipo").setAttribute("disabled", "");
    }else {
      console.log('Unchecked');
      document.getElementById("delivery_collect_record_nombre_recibe").setAttribute("disabled", "");
      document.getElementById("delivery_collect_record_nombre_devuelve").removeAttribute("disabled");
      document.getElementById("delivery_collect_record_devolucion_observaciones").removeAttribute("disabled");
      document.getElementById("delivery_collect_record_devolucion_estado_equipo").removeAttribute("disabled");
    }
  }
}
