class CreateFormacionJovenes < ActiveRecord::Migration[5.2]
  def change
    create_table :formacion_jovenes do |t|
      t.string :tipo_documento
      t.string :rut_pasaporte
      t.string :nombres
      t.string :paterno
      t.string :materno
      t.string :email
      t.string :nacionalidad
      t.string :genero
      t.string :profesion_titulo_grado
      t.string :universidad_formacion
      t.string :otra_universidad_formacion
      t.string :region_universidad_formacion
      t.string :universidad_origen
      t.string :pais_universidad_origen
      t.datetime :fecha_nacimiento
      t.string :tipo_financiamiento
      t.decimal :monto
      t.string :relacion_centro
      t.string :fecha_ingreso_centro
      t.datetime :fecha_desvinculacion
      t.string :estado

      t.timestamps
    end
  end
end
