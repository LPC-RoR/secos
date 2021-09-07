class CreateRColaboraciones < ActiveRecord::Migration[5.2]
  def change
    create_table :r_colaboraciones do |t|
      t.string :nombre_red
      t.text :objetivo
      t.text :descripcion
      t.string :institucion_co_participante
      t.string :tipo_productos
      t.string :n_productos
      t.integer :n_investigadores_milenio
      t.integer :n_postdoc_alumnos_milenio
      t.integer :n_investigadores_externos
      t.integer :n_postdoc_alumnos_externos

      t.timestamps
    end
  end
end
