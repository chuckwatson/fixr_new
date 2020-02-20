class ServiceBooking < ApplicationRecord
  belongs_to :shop_service_item
  belongs_to :user
end
