class RenameRegionIdToInvestigador < ActiveRecord::Migration[5.2]
  def change
	rename_column :investigadores, :region_id, :region
  end
end
