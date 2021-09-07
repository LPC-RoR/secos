class CreateILis < ActiveRecord::Migration[5.2]
  def change
    create_table :i_lis do |t|
      t.integer :investigador_id
      t.integer :linea_investigacion_id

      t.timestamps
    end
    add_index :i_lis, :investigador_id
    add_index :i_lis, :linea_investigacion_id
  end
end
