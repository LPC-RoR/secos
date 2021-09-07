class AddHorasDedicacionToInvestigador < ActiveRecord::Migration[5.2]
  def change
    add_column :investigadores, :horas_dedicacion, :integer
  end
end
