class CreateTesisFinalizadas < ActiveRecord::Migration[5.2]
  def change
    create_table :tesis_finalizadas do |t|
      t.string :estudiante
      t.string :nivel_formacion
      t.string :nombre_tesis
      t.datetime :fecha_aprobacion

      t.timestamps
    end
  end
end
