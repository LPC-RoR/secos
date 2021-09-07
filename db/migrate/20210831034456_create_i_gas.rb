class CreateIGas < ActiveRecord::Migration[5.2]
  def change
    create_table :i_gas do |t|
      t.integer :investigador_id
      t.integer :grado_academico_id

      t.timestamps
    end
    add_index :i_gas, :investigador_id
    add_index :i_gas, :grado_academico_id
  end
end
