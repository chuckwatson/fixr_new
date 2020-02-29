class RemoveOldPriceFromJobs < ActiveRecord::Migration[5.2]

  def change
    remove_column :jobs, :price, :integer
  end

end
