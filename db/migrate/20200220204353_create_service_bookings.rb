class CreateServiceBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :service_bookings do |t|
      t.date :date
      t.string :shop_service_item
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
