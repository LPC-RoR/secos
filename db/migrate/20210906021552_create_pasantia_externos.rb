class CreatePasantiaExternos < ActiveRecord::Migration[5.2]
  def change
    create_table :pasantia_externos do |t|
      t.string :tipo_pasante
      t.string :nombres
      t.string :paterno
      t.string :materno
      t.string :grado_academico
      t.string :pais
      t.string :institucion_procedencia
      t.string :institucion_pasantia
      t.string :region
      t.text :descripcion_pasantia
      t.datetime :fecha_inicio
      t.datetime :fecha_termino

      t.timestamps
    end
  end
end
