class SuburbsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update,:destroy] 

  def new
    @suburbs = @trip.suburbs.build
  end

end