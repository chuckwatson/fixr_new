class AddServicesToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :service_id, :integer
  end
end