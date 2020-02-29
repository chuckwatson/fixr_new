class RemoveOldPriceFromJobs < ActiveRecord::Migration[5.2]
  def change
    remove_columnn :jobs, :price:integer
  end
end
