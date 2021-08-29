class CreateInvestigadores < ActiveRecord::Migration[5.2]
  def change
    create_table :investigadores do |t|
      t.string :tipo_documento
      t.string :rut_pasaporte
      t.string :nombres
      t.string :paterno
      t.string :materno
      t.string :direccion_correspondencia
      t.integer :region_id
      t.datetime :fecha_nacimiento
      t.integer :nacionalidad_id
      t.integer :profesion_id
      t.string :otra_profesion
      t.string :institucion
      t.string :cargo
      t.string :email
      t.string :telefono_1
      t.string :telefono_2
      t.string :celular
      t.string :fuente_financiamiento
      t.string :relacion_centro
      t.datetime :fecha_inicio
      t.datetime :fecha_termino
      t.string :vigencia

      t.timestamps
    end
    add_index :investigadores, :region_id
    add_index :investigadores, :nacionalidad_id
    add_index :investigadores, :profesion_id
  end
end
