class CreateFjDis < ActiveRecord::Migration[5.2]
  def change
    create_table :fj_dis do |t|
      t.integer :formacion_joven_id
      t.integer :disciplina_id

      t.timestamps
    end
    add_index :fj_dis, :formacion_joven_id
    add_index :fj_dis, :disciplina_id
  end
end
