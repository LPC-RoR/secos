class CreateRfcIs < ActiveRecord::Migration[5.2]
  def change
    create_table :rfc_is do |t|
      t.integer :rf_colaboracion_id
      t.integer :investigador

      t.timestamps
    end
    add_index :rfc_is, :rf_colaboracion_id
    add_index :rfc_is, :investigador
  end
end
