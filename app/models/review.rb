class Review < ActiveRecord::Base
  belongs_to :restaurant
  validates :restaurant_id, presence: true
  validates_inclusion_of :rating, in: 1..5
end
