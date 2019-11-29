class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_one :review
end
