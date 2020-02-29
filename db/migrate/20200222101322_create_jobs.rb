class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :name
      t.text :description

      t.timestamps
    end

      create_table :services do |t|
      t.integer :price
      t.references :shop, foreign_key: true
      t.references :job, foreign_key: true

      t.timestamps
    end

  end
end
