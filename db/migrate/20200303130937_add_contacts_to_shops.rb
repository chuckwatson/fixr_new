class AddContactsToShops < ActiveRecord::Migration[5.2]
  def change
    add_column :shops, :email, :string
    add_column :shops, :phone, :integer
  end
end
