class CreateFjIs < ActiveRecord::Migration[5.2]
  def change
    create_table :fj_is do |t|
      t.integer :formacion_joven_id
      t.integer :investigador_id

      t.timestamps
    end
    add_index :fj_is, :formacion_joven_id
    add_index :fj_is, :investigador_id
  end
end
