class AddInvestigadorIdToNivelFormacion < ActiveRecord::Migration[5.2]
  def change
    add_column :nivel_formaciones, :investigador_id, :integer
    add_index :nivel_formaciones, :investigador_id
  end
end
