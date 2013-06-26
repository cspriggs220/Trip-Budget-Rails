require_relative 'category.rb'

class Trip < ActiveRecord::Base
  attr_accessible :name
  belongs_to :user

  has_many :budgets, :dependent => :destroy
  has_many :expenses, :dependent => :destroy
  has_many :categories, through: :budgets

  validates_presence_of :user, :name
  validates_uniqueness_of :name, scope: :user_id, message: "must be unique"

  after_create :populate_budgets

  private


  def populate_budgets
    Category.all.each do |category|
      self.budgets.create( total: 0, category_id: category.id )
    end
  end
end
