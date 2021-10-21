class AddNombreToArchivo < ActiveRecord::Migration[5.2]
  def change
    add_column :archivos, :nombre, :string
  end
end
