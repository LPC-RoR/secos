class CreatePatPais < ActiveRecord::Migration[5.2]
  def change
    create_table :pat_pais do |t|
      t.integer :patente_id
      t.integer :pais_id

      t.timestamps
    end
    add_index :pat_pais, :patente_id
    add_index :pat_pais, :pais_id
  end
end
