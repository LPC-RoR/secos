class CreateRcIs < ActiveRecord::Migration[5.2]
  def change
    create_table :rc_is do |t|
      t.integer :r_colaboracion_id
      t.integer :investigador_id

      t.timestamps
    end
    add_index :rc_is, :r_colaboracion_id
    add_index :rc_is, :investigador_id
  end
end
