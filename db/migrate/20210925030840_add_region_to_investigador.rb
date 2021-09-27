class AddRegionToInvestigador < ActiveRecord::Migration[5.2]
  def change
    add_column :investigadores, :region, :string
  end
end
