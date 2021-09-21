class ChangeInvestigador < ActiveRecord::Migration[5.2]
  def change
  	rename_column :rfc_as, :investigador, :investigador_id
  	rename_column :rfc_is, :investigador, :investigador_id
  end
end
