import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "layout", "title", "content", "buttons", "phone" ]

  connect() {
   console.log("Hello Types Controller")
//    this.hideAll()
//    console.log(this.layoutTarget.display)
  }
  hideAll() {
    this.layoutTarget.style.display = "none"
    this.titleTarget.style.display = "none"
    this.contentTarget.style.display = "none"
    this.buttonsTarget.style.display = "none"
  }
  showLayout() {
    this.hideAll()
    this.layoutTarget.style.display = "block"
  }
  showTitle() {
    this.hideAll()
    this.titleTarget.style.display = "block"
  }
  showContent() {
    this.hideAll()
    this.contentTarget.style.display = "block"
  }
  showButtons() {
    this.hideAll()
    this.buttonsTarget.style.display = "block"
  }

  changeBackground() {
    this.phoneTarget.style.backgroundColor = "red"
  }
  updateInput(event){
    var rule = this.data.get('rule')
    // I guess we would also need the ID of the element that we want to change ? 
    var element = this.data.get('target')
    console.log(rule)
  }
}
