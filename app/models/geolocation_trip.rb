class GeolocationTrip
  include ActiveModel::API

  attr_accessor :latitude, :longitude, :trip_id

  def suburb
    address.suburb
  end

  def can_save?
    trip = Trip.find(trip_id)
    if trip.suburbs.size != 0
      last_suburb = trip.suburbs.last.name
    else
      last_suburb = nil
    end
    return true if last_suburb != self.suburb
    return false

  end

  private
  def address
    Geocoder.search([latitude,longitude]).first
  end

end