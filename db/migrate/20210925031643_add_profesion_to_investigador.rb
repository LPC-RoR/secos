class AddProfesionToInvestigador < ActiveRecord::Migration[5.2]
  def change
    add_column :investigadores, :profesion, :string
  end
end
