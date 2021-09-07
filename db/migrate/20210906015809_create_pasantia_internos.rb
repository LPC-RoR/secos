class CreatePasantiaInternos < ActiveRecord::Migration[5.2]
  def change
    create_table :pasantia_internos do |t|
      t.string :estudiante
      t.string :institucion
      t.string :pais
      t.string :tutor
      t.string :proyecto
      t.text :descripcion
      t.datetime :fecha_inicio
      t.datetime :fecha_termino
      t.string :unidad_departamento

      t.timestamps
    end
  end
end
