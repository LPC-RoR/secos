class CreatePcIotros < ActiveRecord::Migration[5.2]
  def change
    create_table :pc_iotros do |t|
      t.integer :presentacion_congreso_id
      t.integer :investigador_id

      t.timestamps
    end
    add_index :pc_iotros, :presentacion_congreso_id
    add_index :pc_iotros, :investigador_id
  end
end
