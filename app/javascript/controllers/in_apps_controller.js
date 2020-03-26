import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["title", "content", "name", "description"]

  connect(){
  }

  updateText(e){
    var value = e.currentTarget.value;
    var element = e.currentTarget.dataset.element;
    document.getElementById(element).innerHTML = value;
  }

  updateType(e){
    $.ajax({
      url: '/in_apps/change_type',
      method: "POST",
      data: $("#form").serialize()
    });
  }
} 