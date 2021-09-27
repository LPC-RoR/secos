class RemoveProfesionFromInvestigador < ActiveRecord::Migration[5.2]
  def change
    remove_column :investigadores, :profesion, :integer
  end
end
