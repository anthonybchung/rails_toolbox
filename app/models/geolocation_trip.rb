class GeolocationTrip
  include ActiveModel::API

  attr_accessor :latitude, :longitude, :trip_id

  def suburb
    address.suburb
  end

  def can_save?
    trip = Trip.find(trip_id)
    last_suburb = trip.suburbs.last.name
    return true if last_suburb != self.suburb
    return false

  end

  private
  def address
    Geocoder.search([latitude,longitude]).first
  end

end