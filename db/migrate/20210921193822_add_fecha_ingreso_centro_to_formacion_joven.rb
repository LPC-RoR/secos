class AddFechaIngresoCentroToFormacionJoven < ActiveRecord::Migration[5.2]
  def change
    add_column :formacion_jovenes, :fecha_ingreso_centro, :datetime
  end
end
