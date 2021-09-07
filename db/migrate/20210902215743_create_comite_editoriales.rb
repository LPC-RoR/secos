class CreateComiteEditoriales < ActiveRecord::Migration[5.2]
  def change
    create_table :comite_editoriales do |t|
      t.string :nombre_publicacion
      t.string :categoria
      t.string :otra_categoria
      t.integer :anio_inicio
      t.integer :anio_termino

      t.timestamps
    end
  end
end
