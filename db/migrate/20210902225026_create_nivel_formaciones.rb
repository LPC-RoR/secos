class CreateNivelFormaciones < ActiveRecord::Migration[5.2]
  def change
    create_table :nivel_formaciones do |t|
      t.string :nivel_en_formacion
      t.string :titulo_grado
      t.text :descripcion
      t.datetime :fecha_inicio
      t.datetime :fecha_obtencion

      t.timestamps
    end
  end
end
