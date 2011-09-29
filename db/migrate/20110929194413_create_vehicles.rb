class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :plate
      t.string :vin
      t.text :make
      t.string :model
      t.integer :year
      t.text :status
      t.integer :driver_id

      t.timestamps
    end
  end
end
