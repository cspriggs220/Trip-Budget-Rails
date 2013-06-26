class Category < ActiveRecord::Base
  attr_accessible :name
  has_many :budgets
  has_many :trips, through: :budgets
  has_many :expenses, through: :budgets
end
