class AddJobStatusToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :job_complete, :boolean, default: false
  end
end
