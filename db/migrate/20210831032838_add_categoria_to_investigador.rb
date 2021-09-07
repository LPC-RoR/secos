class AddCategoriaToInvestigador < ActiveRecord::Migration[5.2]
  def change
    add_column :investigadores, :categoria, :string
  end
end
