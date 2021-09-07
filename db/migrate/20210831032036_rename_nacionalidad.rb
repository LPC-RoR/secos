class RenameNacionalidad < ActiveRecord::Migration[5.2]
  def change
	rename_column :investigadores, :nacionalidad_id, :nacionalidad
  end
end
