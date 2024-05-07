class SuburbsController < ApplicationController
  before_action :authenticate_user!, only: [:new,:create] 

  def new
    @geolocation_trip = GeolocationTrip.new
    @geolocation_trip.trip_id = params[:id]
  end

  def create
    @suburb = Suburb.new(geolocation_params)
    puts '**********'
    puts "latitude: #{@suburb.latitude}"
    puts "longitude: #{@suburb.longitude}"
    puts "trip_id: #{@suburb.trip_id}"
  end

  private

  def geolocation_params
    params.require(:geolocation_trip).permit(:latitude,:longitude,:trip_id)
  end

end
