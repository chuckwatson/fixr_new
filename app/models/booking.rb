class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :job
  validates :date, presence: true
  monetize :amount_cents
end
