class TripsController < ApplicationController

  def index
    @trips = current_user.trips.all
    # @trip = Trip.new
  end

  def new
    @trip = Trip.new
  end

  def create
    @trips = current_user.trips.all
    @trip = current_user.trips.build(params[:trip])
    # @trip = Trip.create( params[:trip] )
    if @trip.save
      flash[:notice] = "Your #{@trip.name} trip was successfully created!"
      # redirect_to @trip, notice: "Your trip was successfully created!"
      redirect_to trips_path
    else
      flash[:notice] = @trip.errors.full_messages.join(",")
      render :new
    end
  end

  def show
    @trip = Trip.find( params[:id] )
  end

end
