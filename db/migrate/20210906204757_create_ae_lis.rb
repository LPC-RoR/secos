class CreateAeLis < ActiveRecord::Migration[5.2]
  def change
    create_table :ae_lis do |t|
      t.integer :articulo_entrevista_id
      t.integer :linea_investigacion_id

      t.timestamps
    end
    add_index :ae_lis, :articulo_entrevista_id
    add_index :ae_lis, :linea_investigacion_id
  end
end
