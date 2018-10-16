class CreateThermostats < ActiveRecord::Migration[5.2]
  def change
    create_table :thermostats do |t|
      t.string :household_token, null: false, unique: true
      t.string :location, null: false
      t.timestamps
    end
  end
  # add_index :thermostats, :household_token
end
