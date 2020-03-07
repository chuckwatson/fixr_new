class AddDefaultToJobComplete < ActiveRecord::Migration[5.2]
  def change
    change_column :bookings, :job_complete, :boolean, default: false
  end
end
