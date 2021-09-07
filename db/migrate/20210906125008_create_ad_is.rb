class CreateAdIs < ActiveRecord::Migration[5.2]
  def change
    create_table :ad_is do |t|
      t.integer :actividad_difusion_id
      t.integer :investigador_id

      t.timestamps
    end
    add_index :ad_is, :actividad_difusion_id
    add_index :ad_is, :investigador_id
  end
end
