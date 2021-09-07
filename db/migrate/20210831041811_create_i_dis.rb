class CreateIDis < ActiveRecord::Migration[5.2]
  def change
    create_table :i_dis do |t|
      t.integer :investigador_id
      t.integer :disciplina_id

      t.timestamps
    end
    add_index :i_dis, :investigador_id
    add_index :i_dis, :disciplina_id
  end
end
