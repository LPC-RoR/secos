class CreatePis < ActiveRecord::Migration[5.2]
  def change
    create_table :pis do |t|
      t.integer :publicacion_id
      t.integer :investigador_id

      t.timestamps
    end
    add_index :pis, :publicacion_id
    add_index :pis, :investigador_id
  end
end
