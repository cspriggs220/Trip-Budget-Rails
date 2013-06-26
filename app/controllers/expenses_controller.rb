class ExpensesController < ApplicationController

  def index
    @budget = Budget.find( params[:budget_id] )
    # @expense = @budget.expenses.new( params[:expense] )
    # @expenses = @budget.expense.all
  end

  def new
    @trip = Trip.find( params[:trip_id] )
    @budget = Budget.find( params[:budget_id] )
    @expense = @budget.expenses.new
  end

  def create
    # @budget = Budget.find( params[:budget_id] )
    # @expense = @budget.expenses.new( params[:expense] )
  end
end
