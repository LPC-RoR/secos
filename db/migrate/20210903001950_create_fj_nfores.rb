class CreateFjNfores < ActiveRecord::Migration[5.2]
  def change
    create_table :fj_nfores do |t|
      t.integer :formacion_joven_id
      t.integer :nivel_formacion_id

      t.timestamps
    end
    add_index :fj_nfores, :formacion_joven_id
    add_index :fj_nfores, :nivel_formacion_id
  end
end
