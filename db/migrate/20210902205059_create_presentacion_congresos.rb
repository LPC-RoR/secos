class CreatePresentacionCongresos < ActiveRecord::Migration[5.2]
  def change
    create_table :presentacion_congresos do |t|
      t.string :alcance
      t.string :tipo
      t.string :otro_tipo
      t.string :organizacion
      t.string :nombre_presentacion
      t.string :nombre_evento
      t.string :link_presentacion
      t.string :fecha
      t.string :ciudad
      t.string :pais

      t.timestamps
    end
  end
end
