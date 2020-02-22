class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :service
  belongs_to :shop, through: :service
  validation :booking_date, presence: true
end
