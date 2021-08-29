class CreateDatosCentros < ActiveRecord::Migration[5.2]
  def change
    create_table :datos_centros do |t|
      t.string :nombre_espaniol
      t.string :nombre_ingles
      t.text :descripcion
      t.string :acronimo
      t.string :tipo_centro
      t.string :ambito
      t.string :estado
      t.string :doc_aprobatorio
      t.string :doc_extension
      t.string :etapa
      t.string :codigo_proyecto
      t.string :decreto_aprobatorio
      t.datetime :fecha_decreto_aprobatorio
      t.datetime :fecha_inicio
      t.datetime :fecha_termino
      t.datetime :fecha_termino_extension
      t.string :personalidad_juridica
      t.string :direccion
      t.string :telefono
      t.string :fax
      t.string :sitio_web
      t.string :institucion_albergante
      t.string :nombre_autoridad
      t.string :nombres_investigador_responsable
      t.string :paterno_investigador_responsable
      t.string :materno_investigador_responsable
      t.string :admin_nombre
      t.string :admin_telefono
      t.string :admin_email
      t.string :admin_ejecutivo_rendiciones
      t.string :cientif_nombre
      t.string :cientif_email
      t.string :pme_red_nombre
      t.string :pme_red_email

      t.timestamps
    end
  end
end
