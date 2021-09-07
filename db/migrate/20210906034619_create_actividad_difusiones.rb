class CreateActividadDifusiones < ActiveRecord::Migration[5.2]
  def change
    create_table :actividad_difusiones do |t|
      t.string :asociada_concurso_milenio
      t.string :organizacion
      t.string :alcance
      t.string :titulo_evento
      t.string :tipo_evento
      t.string :otro_tipo_evento
      t.datetime :fecha
      t.string :pais_institucion
      t.string :region_ubicacion
      t.text :descripcion_actividad
      t.integer :n_asistentes_estudiantes
      t.integer :n_total_asistentes
      t.integer :duracion
      t.string :responsable_actividad

      t.timestamps
    end
  end
end
