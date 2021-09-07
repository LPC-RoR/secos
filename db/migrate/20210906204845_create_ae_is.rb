class CreateAeIs < ActiveRecord::Migration[5.2]
  def change
    create_table :ae_is do |t|
      t.integer :articulo_entrevista_id
      t.integer :investigador_id

      t.timestamps
    end
    add_index :ae_is, :articulo_entrevista_id
    add_index :ae_is, :investigador_id
  end
end
