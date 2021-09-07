class CreateAcoPos < ActiveRecord::Migration[5.2]
  def change
    create_table :aco_pos do |t|
      t.integer :aco_id
      t.integer :publico_objetivo_id

      t.timestamps
    end
    add_index :aco_pos, :aco_id
    add_index :aco_pos, :publico_objetivo_id
  end
end
