import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="geolocation"
export default class extends Controller {

  static targets = ["position","longitude","latitude"]
  connect() {
    console.log("hello geolocation!!!! I am new")
  }

  geolocate(){
    console.log('geolocation activated')
    
    if(!navigator.geolocation){
      console.log('Geolocation is not supported')
    }else{
      navigator.geolocation.getCurrentPosition(this.success.bind(this),this.error.bind(this))
    }
  }

  success(position){
      let longitude_pos = position.coords.longitude
      let latitude_pos = position.coords.latitude

      this.positionTarget.textContent = `long: ${longitude_pos}, lat: ${latitude_pos}`
      this.longitudeTarget.value = longitude_pos
      this.latitudeTarget.value = latitude_pos


  }


  error(){
    console.log('unable to get location')
  }
}
