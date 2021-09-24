class CreateRfcFjos < ActiveRecord::Migration[5.2]
  def change
    create_table :rfc_fjos do |t|
      t.integer :rf_colaboracion_id
      t.integer :formacion_joven_id

      t.timestamps
    end
    add_index :rfc_fjos, :rf_colaboracion_id
    add_index :rfc_fjos, :formacion_joven_id
  end
end
