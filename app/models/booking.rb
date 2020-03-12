class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :job
  # belongs_to :shop
  validates :date, presence: true
  monetize :amount_cents

def complete
  self.job_complete = 'true'
end

end
