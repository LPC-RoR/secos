class AddLinkToSbLista < ActiveRecord::Migration[5.2]
  def change
    add_column :sb_listas, :link, :string
  end
end
