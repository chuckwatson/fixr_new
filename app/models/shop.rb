class Shop < ApplicationRecord

  belongs_to :favourite
  belongs_to :user
  has_many :jobs, through: :services
  has_many :bookings, through: :service, dependent: :destroy
  has_many :reviews, dependent: :destroy
  validation :name, presence: true
  validation :address, presence: true
  validation :open_hours, presence: true
  validation :close_hours, presence: true
end
