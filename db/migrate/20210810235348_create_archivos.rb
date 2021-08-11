class CreateArchivos < ActiveRecord::Migration[5.2]
  def change
    create_table :archivos do |t|
      t.integer :orden
      t.string :archivo
      t.string :nota
      t.integer :documento_id

      t.timestamps
    end
    add_index :archivos, :orden
    add_index :archivos, :documento_id
  end
end
