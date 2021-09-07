class CreateAporteActividades < ActiveRecord::Migration[5.2]
  def change
    create_table :aporte_actividades do |t|
      t.string :tipo
      t.string :actividad_producto
      t.string :colaborador
      t.string :tipo_colaboracion
      t.decimal :monto

      t.timestamps
    end
  end
end
