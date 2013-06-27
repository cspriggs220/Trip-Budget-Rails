class ExpensesController < ApplicationController

  def index
    @budget = Budget.find( params[:budget_id] )
  end

  def new
    @trip = Trip.find( params[:trip_id] )
    @budget = Budget.find( params[:budget_id] )
    @expense = @budget.expenses.new
  end

  def create
    @trip = Trip.find( params[:trip_id] )
    @budget = Budget.find( params[:budget_id] )
    @expense = @budget.expenses.new( params[:expense] )
    if @expense.save
      redirect_to(trip_path(@trip),
        :notice => "Expense added")
    else
      flash[:notice] = @expense.errors.full_messages.join(",")
      render :new
    end
  end

  def destroy
    @trip = Trip.find( params[:trip_id] )
    @expense = Expense.find( params[:id] )
    @expense.destroy
      redirect_to(trip_path(@trip),
        :notice => "Your expense was deleted")
  end
end
