class CreateCiIs < ActiveRecord::Migration[5.2]
  def change
    create_table :ci_is do |t|
      t.integer :comite_editorial_id
      t.integer :investigador_id

      t.timestamps
    end
    add_index :ci_is, :comite_editorial_id
    add_index :ci_is, :investigador_id
  end
end
