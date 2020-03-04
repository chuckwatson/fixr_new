class Job < ApplicationRecord
  belongs_to :shop
  has_many :bookings
  validates :name, presence: true
  validates :description, presence: true
  monetize :price_cents
end
