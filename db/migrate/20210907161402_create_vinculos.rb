class CreateVinculos < ActiveRecord::Migration[5.2]
  def change
    create_table :vinculos do |t|
      t.string :actividad
      t.string :tipo_conexion
      t.string :tipo_actividad
      t.string :otro_tipo_actividad
      t.text :objetivo_actividad
      t.datetime :fecha_inicio
      t.datetime :fecha_termino
      t.string :investigador_encargado
      t.decimal :fondos_pesos
      t.decimal :fondos_dolares
      t.decimal :costo_vinculo_pesos
      t.decimal :costo_vinculo_dolares
      t.string :nombre_institucion
      t.string :pais_institucion
      t.string :region_institucion
      t.string :ciudad
      t.string :tipo_institucion
      t.string :otro_tipo_institucion
      t.string :sector_economico
      t.string :otro_sector_economico

      t.timestamps
    end
  end
end
