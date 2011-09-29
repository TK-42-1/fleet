class CreateMaintenances < ActiveRecord::Migration
  def change
    create_table :maintenances do |t|
      t.string :invoice
      t.string :date
      t.integer :milage
      t.decimal :cost, precision: 8, scale: 2
      t.string :serviced_by
      t.string :category
      t.integer :vehicle_id

      t.timestamps
    end
  end
end
