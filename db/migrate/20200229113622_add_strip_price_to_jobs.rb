class AddStripPriceToJobs < ActiveRecord::Migration[5.2]
  def change
    add_monetize :jobs, :price, currency: { present: false }
  end
end
