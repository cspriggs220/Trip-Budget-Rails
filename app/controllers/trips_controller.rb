class TripsController < ApplicationController
  before_filter :find_trip, :only => [:show, :edit, :update, :destroy]

  def find_trip
    @trip = Trip.find( params[:id] )
  end

  def index
    @trips = current_user.trips.order("created_at").all
  end

  def new
    @trip = Trip.new
  end

  def create
    @trips = current_user.trips.all
    @trip = current_user.trips.build(params[:trip])
    if @trip.save
      redirect_to(trip_path(@trip),
        :notice => "Your #{@trip.name} trip was created!")
    else
      flash[:notice] = @trip.errors.full_messages.join(",")
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @trip.update_attributes( params[:trip] )
      redirect_to(trips_path,
        :notice => "Your trip was updated")
    else
      flash[:notice] = @trip.errors.full_messages.join(",")
      render :edit
    end
  end

  def destroy
    @trip.destroy
    redirect_to(trips_path,
      :notice => "Your trip was deleted")
  end

end
