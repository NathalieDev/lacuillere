class Review < ActiveRecord::Base
  belongs_to :restaurant
  validates :content, presence: true
  validates :references
  validates :rating, inclusion: { in: 0..5, message: "%{value} must be within 0-5" }
end
