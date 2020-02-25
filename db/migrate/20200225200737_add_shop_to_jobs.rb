class AddShopToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :shop_id, :integer
  end
end
