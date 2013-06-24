class BudgetsController < ApplicationController
  def edit
    @trip = Trip.find( params[:trip_id] )
    @budget = @trip.budgets.find( params[:id] )
  end

  def update
    @trip = Trip.find( params[:trip_id] )
    @budget = @trip.budgets.find( params[:id] )
    if @budget.update_attributes( params[:budget] )
      redirect_to(trip_path,
        :notice => "#{@budget.name} budget was updated")
    else
      flash[:notice] = "Total amount must be given"
      render :edit
    end
  end
end