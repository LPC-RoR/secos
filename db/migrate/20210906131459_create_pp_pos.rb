class CreatePpPos < ActiveRecord::Migration[5.2]
  def change
    create_table :pp_pos do |t|
      t.integer :producto_pme_id
      t.integer :publico_objetivo_id

      t.timestamps
    end
    add_index :pp_pos, :producto_pme_id
    add_index :pp_pos, :publico_objetivo_id
  end
end
