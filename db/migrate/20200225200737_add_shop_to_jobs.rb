class AddShopToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :shop_id, :integer
  end

  # create_table :bookings do |t|
  #     t.date :date
  #     t.references :user, foreign_key: true
  #     t.references :service, foreign_key: true
  #     t.timestamps
  #   end
end
