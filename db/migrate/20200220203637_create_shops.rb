class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :name
      t.text :address
      t.string :open_hours
      t.string :close_hours

      t.timestamps
    end
  end
end
