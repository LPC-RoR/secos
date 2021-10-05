class AddDirectorioIdToDocumento < ActiveRecord::Migration[5.2]
  def change
    add_column :documentos, :directorio_id, :integer
    add_index :documentos, :directorio_id
  end
end
