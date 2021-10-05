class CreateImagenes < ActiveRecord::Migration[5.2]
  def change
    create_table :imagenes do |t|
      t.integer :orden
      t.string :imagen
      t.string :nota
      t.integer :linea_id
      t.integer :directorio_id

      t.timestamps
    end
    add_index :imagenes, :orden
    add_index :imagenes, :imagen
    add_index :imagenes, :linea_id
    add_index :imagenes, :directorio_id
  end
end
