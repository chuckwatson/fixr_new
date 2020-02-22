class Shop < ApplicationRecord

  belongs_to :favorite
  belongs_to :user
  has_many :jobs, through: :services
  has_many :bookings, through: :service, dependent: :destroy
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :open_hours, presence: true
  validates :close_hours, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
