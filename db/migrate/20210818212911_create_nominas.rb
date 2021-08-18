class CreateNominas < ActiveRecord::Migration[5.2]
  def change
    create_table :nominas do |t|
      t.string :email
      t.string :tipo

      t.timestamps
    end
    add_index :nominas, :email
  end
end
