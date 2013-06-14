class TripsController < ApplicationController

  def index
    @trips = Trip.all
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.create( params[:trip] )
    if @trip.save
      flash[:notice] = "Your trip was successfully created!"
      redirect_to :root
    else
      flash[:notice] = @trip.errors.full_messages.join(",")
      render :new
    end
  end

  def show
    @trip = Trip.find( params[:id] )
  end

end
