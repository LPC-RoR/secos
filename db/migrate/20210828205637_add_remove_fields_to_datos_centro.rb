class AddRemoveFieldsToDatosCentro < ActiveRecord::Migration[5.2]
  def change
    add_column :datos_centros, :remove_doc_aprobatorio, :boolean
    add_index :datos_centros, :remove_doc_aprobatorio
    add_column :datos_centros, :remove_doc_extension, :boolean
    add_index :datos_centros, :remove_doc_extension
  end
end
