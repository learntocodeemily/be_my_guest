class Review < ApplicationRecord
  belongs_to :user
  belongs_to :booking

  validates :rating, presence: true, inclusion: { in: (1..5) }, numericality: { only_integer: true }
  validates :comment, presence: true, length: { minimum: 5 }
end
