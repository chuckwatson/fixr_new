class CreateShopServices < ActiveRecord::Migration[5.2]
  def change
    create_table :shop_services do |t|
      t.string :price
      t.references :shop, foreign_key: true
      t.references :service_item, foreign_key: true

      t.timestamps
    end
  end
end
