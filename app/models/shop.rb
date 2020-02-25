class Shop < ApplicationRecord

  has_one_attached :photo
  # belongs_to favorite
  belongs_to :user
  has_many :jobs
  has_many :bookings, through: :jobs, dependent: :destroy
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :open_hours, presence: true
  validates :close_hours, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
