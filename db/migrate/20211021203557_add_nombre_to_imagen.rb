class AddNombreToImagen < ActiveRecord::Migration[5.2]
  def change
    add_column :imagenes, :nombre, :string
  end
end
