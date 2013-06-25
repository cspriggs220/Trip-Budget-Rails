class ExpensesController < ApplicationController
  def new
    @budget = Budget.find( params[:budget_id] )
  end
end
