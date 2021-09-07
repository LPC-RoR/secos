class CreateRfColaboraciones < ActiveRecord::Migration[5.2]
  def change
    create_table :rf_colaboraciones do |t|
      t.string :nombre_red
      t.text :objetivo
      t.text :descripcion
      t.string :alcance
      t.integer :n_investigadores_milenio
      t.integer :n_postdoc_estudiantes_milenio
      t.integer :n_investigadores_externos
      t.integer :n_postdoc_estudiantes_externos
      t.string :instituciones
      t.string :sitio_web
      t.datetime :fecha_inicio
      t.datetime :fecha_termino

      t.timestamps
    end
  end
end
