class TripsController < ApplicationController

  def index
    @trips = Trip.all
  end

  def new
    @trip = Trip.new
  end

  def create
    if @trip = Trip.create( params[:trip] )
      flash[:notice] = "Your trip was saved!"
      redirect_to :root
    else
      render :new
    end
  end

  def show
  end

end
