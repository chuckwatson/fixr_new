class UpdateHoursInShopsTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :shops, :close_hours, :string
  end

end
