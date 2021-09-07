class CreatePpIs < ActiveRecord::Migration[5.2]
  def change
    create_table :pp_is do |t|
      t.integer :producto_pme_id
      t.integer :investigador_id

      t.timestamps
    end
    add_index :pp_is, :producto_pme_id
    add_index :pp_is, :investigador_id
  end
end
