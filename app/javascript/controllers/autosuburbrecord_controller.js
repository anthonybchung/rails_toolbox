import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="autosuburbrecord"
export default class extends Controller {
  static targets = ["recordingButton"]
  connect() {
    console.log('activation button connected')
    this.activationPeriod()
  }

  activateButton(){
    console.log("clicked")
    this.recordingButtonTarget.click()
  }

  activationPeriod(){
    setTimeout(()=>{
      console.log("inside set timeout")
      this.activateButton()
    },120000)
    console.log("activated after 3 mins")
    // 3mins = 2 * 60 * 1000 = 120000
  }
  

}
