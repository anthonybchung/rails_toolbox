class TripsController < ApplicationController
  before_action :authenticate_user!, only: [:new]
  
  def index
  end

  def show
  end

  def new
    @trip = Trip.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
