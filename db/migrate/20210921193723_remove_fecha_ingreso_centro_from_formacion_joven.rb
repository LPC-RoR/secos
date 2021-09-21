class RemoveFechaIngresoCentroFromFormacionJoven < ActiveRecord::Migration[5.2]
  def change
    remove_column :formacion_jovenes, :fecha_ingreso_centro, :string
  end
end
