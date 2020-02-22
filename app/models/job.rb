class Job < ApplicationRecord
  belongs_to :shop, through: :service, dependent: :destroy
  validation :name, presence: true
  validation :description, presence: true
  validation :price, presence: true
end

