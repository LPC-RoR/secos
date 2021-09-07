class CreateLiDis < ActiveRecord::Migration[5.2]
  def change
    create_table :li_dis do |t|
      t.integer :linea_investigacion_id
      t.integer :disciplina_id

      t.timestamps
    end
    add_index :li_dis, :linea_investigacion_id
    add_index :li_dis, :disciplina_id
  end
end
