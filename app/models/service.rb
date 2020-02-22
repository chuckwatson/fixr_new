class Service < ApplicationRecord
  belongs_to :shop
  has_many :jobs
  has_many :bookings
end
