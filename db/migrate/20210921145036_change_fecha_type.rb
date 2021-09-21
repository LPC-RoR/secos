class ChangeFechaType < ActiveRecord::Migration[5.2]
  def change
	remove_column :presentacion_congresos, :fecha
  end
end
