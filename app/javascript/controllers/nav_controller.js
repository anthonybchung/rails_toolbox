import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="nav"
export default class extends Controller {
  connect() {
    console.log("you are connected")
  }

  static targets = ['closed']

  initialize(){
    this.closed = true
  }

  toggle(){
    if(this.closed){
      this.openNav()
    } else {
      this.closeNav()
    }
  }

  openNav(){
    this.closedTarget.classList.remove('h-0')
    this.closedTarget.classList.add('h-screen')
    this.closed=!this.closed
  }

  closeNav(){
    this.closedTarget.classList.remove('h-screen')
    this.closedTarget.classList.add('h-0')
    this.closed=!this.closed
  }

  
}
