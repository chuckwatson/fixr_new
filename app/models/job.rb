class Job < ApplicationRecord
  belongs_to :shop
  validates :name, presence: true
  validates :description, presence: true
  monetize :price_cents
end
