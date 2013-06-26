class Expense < ActiveRecord::Base
  attr_accessible :amount, :budget_id, :trip_id
  belongs_to :budget
  belongs_to :trip
  # has_one :category, through: :budgets
end
