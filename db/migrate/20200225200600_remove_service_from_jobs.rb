class RemoveServiceFromJobs < ActiveRecord::Migration[5.2]
  def change
    remove_column :jobs, :service_id, :integer
  end
end
