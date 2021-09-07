class CreatePLis < ActiveRecord::Migration[5.2]
  def change
    create_table :p_lis do |t|
      t.integer :publicacion_id
      t.integer :linea_investigacion_id

      t.timestamps
    end
    add_index :p_lis, :publicacion_id
    add_index :p_lis, :linea_investigacion_id
  end
end
