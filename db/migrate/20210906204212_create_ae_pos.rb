class CreateAePos < ActiveRecord::Migration[5.2]
  def change
    create_table :ae_pos do |t|
      t.integer :articulo_entrevista_id
      t.integer :publico_objetivo

      t.timestamps
    end
    add_index :ae_pos, :articulo_entrevista_id
    add_index :ae_pos, :publico_objetivo
  end
end
