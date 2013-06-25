class Expense < ActiveRecord::Base
  attr_accessible :amount, :budget_id, :trip_id
end
