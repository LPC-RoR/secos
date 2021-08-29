class CreateLineaInvestigaciones < ActiveRecord::Migration[5.2]
  def change
    create_table :linea_investigaciones do |t|
      t.string :linea_investigacion
      t.text :objetivo
      t.text :descripcion
      t.text :conceptos_clave
      t.datetime :fecha_inicio
      t.datetime :fecha_termino
      t.string :validez

      t.timestamps
    end
  end
end
