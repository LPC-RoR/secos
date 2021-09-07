class CreateFuenteFinanciamientos < ActiveRecord::Migration[5.2]
  def change
    create_table :fuente_financiamientos do |t|
      t.string :fondos
      t.string :otro_fondo
      t.decimal :monto_pesos

      t.timestamps
    end
  end
end
