import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="autosuburbrecord"
export default class extends Controller {
  static targets = ["recordingButton","timeInterval"]
  static interval
  static logTimer
  
  connect() {
    console.log('activation button connected')
    this.interval = this.timeIntervalTarget.textContent * 60 * 1000
    this.logTimer = setTimeout(()=>{this.activateButton()},this.interval)
    this.activationPeriod()
    console.log("connected")
  }

  clearLogTimer(){
    console.log("clearTimeout")
    clearTimeout(this.logTimer)
  }

  activateButton(){
    console.log("clicked")
    this.recordingButtonTarget.click()
  }

  activationPeriod(){
    this.logtimer
  }
  

}
