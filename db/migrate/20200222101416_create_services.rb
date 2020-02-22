class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.integer :price
      t.references :shop, foreign_key: true
      t.references :job, foreign_key: true

      t.timestamps
    end
  end
end
