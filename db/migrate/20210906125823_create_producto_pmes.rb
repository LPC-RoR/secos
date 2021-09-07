class CreateProductoPmes < ActiveRecord::Migration[5.2]
  def change
    create_table :producto_pmes do |t|
      t.datetime :fecha
      t.string :producto
      t.text :objetivo
      t.string :alcance
      t.string :tipo_producto
      t.string :otro_tipo_producto

      t.timestamps
    end
  end
end
