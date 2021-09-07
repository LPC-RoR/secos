class CreateRfcAs < ActiveRecord::Migration[5.2]
  def change
    create_table :rfc_as do |t|
      t.integer :rf_colaboracion_id
      t.integer :investigador

      t.timestamps
    end
    add_index :rfc_as, :rf_colaboracion_id
    add_index :rfc_as, :investigador
  end
end
