class AddCreditoFotoToTemaAyuda < ActiveRecord::Migration[5.2]
  def change
    add_column :tema_ayudas, :credito_foto, :string
  end
end
