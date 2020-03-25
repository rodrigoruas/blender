import { Controller } from "stimulus"

export default class extends Controller {
  static targets = []


  updateInput(event){
    var rule = this.data.get('rule')
    var element = this.data.get('element')
    if (element === "header_new") {
      var header = parseFloat(event.target.value) / 100.0
      var bottom = ((1 - header) * 100).toFixed(0) + '%'
      document.getElementById(element).style[rule] = event.target.value
      document.getElementById("bottom_new").style["height"] = bottom
    } else {

      document.getElementById(element).style[rule] = event.target.value
    }
  }

  updateCrossInput(event) {
    var var_name = this.data.get('var-name')
    var element = this.data.get('element')
    document.getElementById(element).style.setProperty(var_name, event.target.value)
  } 
}