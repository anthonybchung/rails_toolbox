class SuburbsController < ApplicationController
  before_action :authenticate_user!, only: [:new,:create] 

  def new
    @geolocation_trip = GeolocationTrip.new
    @geolocation_trip.trip_id = params[:id]
  end

  def create
    @suburb = Suburb.new
    @geolocation_trip = GeolocationTrip.new(geolocation_params)
    @suburb.trip_id = geolocation_params[:trip_id]
    @suburb.name = @geolocation_trip.suburb
    if @geolocation_trip.can_save?
      @suburb.save
    end

    
    
  end

  private

  def geolocation_params
    params.require(:geolocation_trip).permit(:latitude,:longitude,:trip_id)
  end

end
