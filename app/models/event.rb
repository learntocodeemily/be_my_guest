class Event < ApplicationRecord
  mount_uploader :image, PhotoUploader
  belongs_to :user

  has_many :bookings

  validates :title, presence: true
  validates :location, presence: true
  validates :date, presence: true
  validates :price, presence: true
  validates :capacity, presence: true
  validates :image, presence: true
end
