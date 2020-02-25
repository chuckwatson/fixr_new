class AddJobsToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :job_id, :integer
  end
end
