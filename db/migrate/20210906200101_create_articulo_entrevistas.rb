class CreateArticuloEntrevistas < ActiveRecord::Migration[5.2]
  def change
    create_table :articulo_entrevistas do |t|
      t.string :tema
      t.string :actividad
      t.text :descripcion
      t.string :tipo_medio
      t.string :nombre_medio
      t.string :seccion
      t.datetime :fecha_publicacion
      t.string :alcance
      t.string :link
      t.string :adjunto

      t.timestamps
    end
  end
end
