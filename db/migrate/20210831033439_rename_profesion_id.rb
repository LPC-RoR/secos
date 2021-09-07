class RenameProfesionId < ActiveRecord::Migration[5.2]
  def change
	rename_column :investigadores, :profesion_id, :profesion
  end
end
