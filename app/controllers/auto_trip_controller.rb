class AutoTripController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def show
    @trip = Trip.includes(:suburbs).find(params[:id])
  end


end
