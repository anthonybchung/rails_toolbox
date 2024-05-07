class TripsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create,:show,:edit,:update,:destroy]
  
  def index
  end

  def show
    @trip = Trip.find(params[:id])
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(new_trip_params)
    if @trip.save
      redirect_to trip_path(@trip)
    else
      render :new, status: :unprocessable_entity
    end

  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def new_trip_params
    params.require(:trip).permit(:driver,:teacher,:odometre_start,:tracking_interval)
  end
end
