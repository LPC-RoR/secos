class CreatePerfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :perfiles do |t|
      t.string :email
      t.integer :administrador_id
      t.integer :usuario_id

      t.timestamps
    end
    add_index :perfiles, :email
    add_index :perfiles, :administrador_id
    add_index :perfiles, :usuario_id
  end
end
