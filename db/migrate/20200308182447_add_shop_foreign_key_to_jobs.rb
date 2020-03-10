class AddShopForeignKeyToJobs < ActiveRecord::Migration[5.2]
  def change
    add_reference :jobs, :shop, foreign_key: true
  end
end
