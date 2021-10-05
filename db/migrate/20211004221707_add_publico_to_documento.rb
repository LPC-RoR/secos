class AddPublicoToDocumento < ActiveRecord::Migration[5.2]
  def change
    add_column :documentos, :publico, :boolean
  end
end
