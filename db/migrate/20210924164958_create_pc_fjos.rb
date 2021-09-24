class CreatePcFjos < ActiveRecord::Migration[5.2]
  def change
    create_table :pc_fjos do |t|
      t.integer :presentacion_congreso_id
      t.integer :formacion_joven_id

      t.timestamps
    end
    add_index :pc_fjos, :presentacion_congreso_id
    add_index :pc_fjos, :formacion_joven_id
  end
end
