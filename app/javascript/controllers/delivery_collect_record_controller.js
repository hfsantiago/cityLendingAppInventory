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

  adding_assets() {
    //console.log('adding assets'); 
    
    var select_asset = document.getElementById( "asset" );
    var select_option = select_asset.options[ select_asset.selectedIndex ];
    //console.log(select_option.value)
    let hidden_val = document.getElementById('delivery_collect_record_delivery_collect_record_assets_attributes').value;
    console.log(hidden_val);
    if (hidden_val === "") {
      let temp_val = [{ asset_id: select_option.value }];
      document.getElementById('delivery_collect_record_delivery_collect_record_assets_attributes').value = temp_val;
      console.log("vacio");
    } 
    //console.log(select_option.innerHTML)
    //console.log( select_asset.options[ select_asset.selectedIndex ])
    let tr = document.createElement("tr");
    let td = document.createElement("td");
    document.getElementById("asset_list_items").innerHTML = document.getElementById("asset_list_items").innerHTML + "<tr><td>"+select_option.value+"</td><td>" + select_option.innerHTML + "</td><td></td></tr>"
    // console.log(select_asset)
  }
}

