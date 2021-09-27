class RemoveRegionFromInvestigador < ActiveRecord::Migration[5.2]
  def change
    remove_column :investigadores, :region, :integer
  end
end
