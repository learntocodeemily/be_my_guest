class Event < ApplicationRecord
  mount_uploader :image, PhotoUploader
  belongs_to :user
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  acts_as_taggable_on :tags

  has_many :bookings

  validates :title, presence: true
  validates :location, presence: true
  validates :date, presence: true
  validates :price, presence: true
  validates :capacity, presence: true
  validates :image, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_location_and_cuisine,
    against: [ :location, :cuisine ],
  using: {
    tsearch: { prefix: true }
  }
end
