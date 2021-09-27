class RemoveNacionalidadFromInvestigador < ActiveRecord::Migration[5.2]
  def change
    remove_column :investigadores, :nacionalidad, :integer
  end
end
