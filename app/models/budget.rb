class Budget < ActiveRecord::Base
  attr_accessible :category_id, :total, :trip_id
  belongs_to :trip
  belongs_to :category
end
