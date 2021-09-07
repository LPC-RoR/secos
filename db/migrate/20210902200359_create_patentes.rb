class CreatePatentes < ActiveRecord::Migration[5.2]
  def change
    create_table :patentes do |t|
      t.string :titulo
      t.text :descripcion
      t.string :categoria
      t.string :solicitante
      t.string :inventor
      t.string :n_solicitud
      t.datetime :fecha_solicitud
      t.string :estado
      t.string :n_registro
      t.datetime :fecha_registro

      t.timestamps
    end
  end
end
