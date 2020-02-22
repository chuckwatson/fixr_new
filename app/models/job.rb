class Job < ApplicationRecord
  belongs_to :service
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
end

