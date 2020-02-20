class CreateServiceItems < ActiveRecord::Migration[5.2]
  def change
    create_table :service_items do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
