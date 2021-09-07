class AddGeneroToInvestigador < ActiveRecord::Migration[5.2]
  def change
    add_column :investigadores, :genero, :string
  end
end
