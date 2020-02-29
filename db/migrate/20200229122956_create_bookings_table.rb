class CreateBookingsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :state
      t.date :date
      t.monetize :amount, currency: { present: false }
      t.string :checkout_session_id
      t.references :user, foreign_key: true
      t.references :job, foreign_key: true

      t.timestamps
    end
  end
end
