class CreateTecnicoAdministrativos < ActiveRecord::Migration[5.2]
  def change
    create_table :tecnico_administrativos do |t|
      t.string :tipo_documento
      t.string :rut_pasaporte
      t.string :nombres
      t.string :paterno
      t.string :materno
      t.datetime :fecha_nacimiento
      t.string :nacionalidad
      t.string :genero
      t.string :categoria
      t.string :relacion_centro
      t.string :tipo_financiamiento
      t.datetime :fecha_ingreso
      t.datetime :fecha_desvinculacion

      t.timestamps
    end
  end
end
