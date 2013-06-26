class Budget < ActiveRecord::Base
  attr_accessible :category_id, :total, :trip_id
  belongs_to :trip
  belongs_to :category
  has_many :expenses

  validates_presence_of :category_id, :total

  def name
    self.category.name
  end
end
