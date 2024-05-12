import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="autosuburbrecord"
export default class extends Controller {
  static targets = ["recordingButton","timeInterval"]
  connect() {
    console.log('activation button connected')
    this.activationPeriod()
  }

  activateButton(){
    console.log("clicked")
    this.recordingButtonTarget.click()
  }

  activationPeriod(){
    const interval = this.timeIntervalTarget.textContent * 60 * 1000
    console.log(this.timeIntervalTarget.textContent)
    setTimeout(()=>{
      console.log("inside set timeout")
      this.activateButton()
    },interval)
    console.log(`activated after ${interval} mins`)
    // 3mins = 2 * 60 * 1000 = 120000
  }
  

}
