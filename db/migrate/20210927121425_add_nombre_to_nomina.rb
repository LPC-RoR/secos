class AddNombreToNomina < ActiveRecord::Migration[5.2]
  def change
    add_column :nominas, :nombre, :string
  end
end
