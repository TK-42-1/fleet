class AddDescriptonToMaintenances < ActiveRecord::Migration
  def change
    add_column :maintenances, :description, :string
  end
end
