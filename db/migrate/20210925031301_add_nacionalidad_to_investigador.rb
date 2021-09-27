class AddNacionalidadToInvestigador < ActiveRecord::Migration[5.2]
  def change
    add_column :investigadores, :nacionalidad, :string
  end
end
