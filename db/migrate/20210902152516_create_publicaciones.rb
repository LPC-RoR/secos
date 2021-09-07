class CreatePublicaciones < ActiveRecord::Migration[5.2]
  def change
    create_table :publicaciones do |t|
      t.datetime :fecha_publicacion
      t.string :categoria_publicacion
      t.string :otra_categoria
      t.string :titulo
      t.string :autores
      t.string :fuente
      t.string :volumen
      t.string :numero
      t.string :pagina_inicial
      t.string :issn
      t.string :doi
      t.string :cuartil
      t.integer :n_autores_inv_asociados
      t.string :n_autores_estudiantes
      t.string :n_autores_otros
      t.string :ligada_red_formal
      t.string :red_formal
      t.string :documento_relacionado

      t.timestamps
    end
  end
end
