class AddPriceToJobs < ActiveRecord::Migration[5.2]
  def change
    remove_column :jobs, :shop_id, :integer
  end

  def change
    add_column :jobs, :price, :integer
  end
end
