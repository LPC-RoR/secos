class RenameLineaInvestifacion < ActiveRecord::Migration[5.2]
  def change
  	rename_column :tf_lis, 'LineaInvestigacion', 'linea_investigacion_id'
  end
end
