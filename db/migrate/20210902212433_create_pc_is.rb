class CreatePcIs < ActiveRecord::Migration[5.2]
  def change
    create_table :pc_is do |t|
      t.integer :presentacion_congreso_id
      t.integer :investigador_id

      t.timestamps
    end
    add_index :pc_is, :presentacion_congreso_id
    add_index :pc_is, :investigador_id
  end
end
