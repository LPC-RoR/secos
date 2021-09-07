class CreateAcos < ActiveRecord::Migration[5.2]
  def change
    create_table :acos do |t|
      t.string :titulo_evento
      t.string :tipo_evento
      t.string :otro_tipo_evento
      t.string :alcance
      t.integer :duracion_dias
      t.datetime :fecha_inicio
      t.datetime :fecha_termino
      t.string :pais
      t.string :ciudad
      t.integer :n_asistentes
      t.integer :n_expositores_milenio
      t.integer :n_expositores_extranjeros
      t.integer :n_expositores_nacionales
      t.string :investigador_responsable

      t.timestamps
    end
  end
end
