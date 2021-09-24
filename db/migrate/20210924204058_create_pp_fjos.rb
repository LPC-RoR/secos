class CreatePpFjos < ActiveRecord::Migration[5.2]
  def change
    create_table :pp_fjos do |t|
      t.integer :producto_pme_id
      t.integer :formacion_joven_id

      t.timestamps
    end
    add_index :pp_fjos, :producto_pme_id
    add_index :pp_fjos, :formacion_joven_id
  end
end
