class AddCamposToSbElemento < ActiveRecord::Migration[5.2]
  def change
    add_column :sb_elementos, :despliegue, :string
    add_column :sb_elementos, :controlador, :string
  end
end
