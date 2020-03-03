class AddPhoneAsString < ActiveRecord::Migration[5.2]
  def change
      change_table :shops do |t|
      t.change :phone, :string
    end
  end
end
