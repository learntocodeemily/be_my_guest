class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :avatar, PhotoUploader

  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

  has_many :events
  has_many :reviews
  has_many :bookings

  validates :first_name, presence: true
  validates :last_name, presence: true
end
