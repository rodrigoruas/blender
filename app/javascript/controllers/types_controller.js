import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "layout", "title", "content", "buttons", "phone" ]

  connect() {
    console.log("Hello Types Controller")
    this.hideAll()
    this.showLayout();
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

  changeView(e) {
    var opt = e.currentTarget.options[e.currentTarget.selectedIndex]
    var height = opt.dataset.viewHeight;
    var width = opt.dataset.viewWidth;
    document.documentElement.style.setProperty("--view-height", height)
    document.documentElement.style.setProperty("--view-width", width)
  }
}