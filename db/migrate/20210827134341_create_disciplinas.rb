class CreateDisciplinas < ActiveRecord::Migration[5.2]
  def change
    create_table :disciplinas do |t|
      t.string :disciplina

      t.timestamps
    end
    add_index :disciplinas, :disciplina
  end
end
