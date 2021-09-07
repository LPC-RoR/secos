class CreateAdPos < ActiveRecord::Migration[5.2]
  def change
    create_table :ad_pos do |t|
      t.integer :actividad_difusion_id
      t.integer :publico_objetivo_id

      t.timestamps
    end
    add_index :ad_pos, :actividad_difusion_id
    add_index :ad_pos, :publico_objetivo_id
  end
end
