class GeolocationsController < ApplicationController
  Geolocation = Struct.new(:longitude, :latitude)

  def index
  end

  def create
    @geolocation = Geolocation.new
    @geolocation.longitude = params[:longitude].to_f
    @geolocation.latitude = params[:latitude].to_f
    address =  Geocoder.search([@geolocation.latitude,@geolocation.longitude]).first
    flash[:suburb]=address.suburb
    # redirect_to new_geolocation_path
  end

  def new
    @geolocation = Geolocation.new(nil,nil)
    @suburb = flash[:suburb]
  end

  def edit

  end
  
  def show

  end

  def update

  end

  def destroy

  end

end
