class Trip < ActiveRecord::Base
  attr_accessible :name
  belongs_to :user

  has_many :budgets
  has_many :categories, through: :budgets

  validates_presence_of :user, :name
  validates_uniqueness_of :name, scope: :user_id, message: "must be unique"
end
