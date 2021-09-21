class AddFechaToPresentacionCongreso < ActiveRecord::Migration[5.2]
  def change
    add_column :presentacion_congresos, :fecha, :datetime
  end
end
