import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="geolocation"
export default class extends Controller {

  static targets = ["position","longitude","latitude"]
  connect() {
    console.log("hello geolocation")
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
      let longitude = position.coords.longitude
      let latitude = position.coords.latitude

      this.positionTarget.textContent = `long: ${longitude}, lat: ${latitude}`
      this.longitudeTarget.value = longitude
      this.latitudeTarget.value = latitude


  }


  error(){
    console.log('unable to get location')
  }
}