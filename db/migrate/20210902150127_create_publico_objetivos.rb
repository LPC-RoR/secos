class CreatePublicoObjetivos < ActiveRecord::Migration[5.2]
  def change
    create_table :publico_objetivos do |t|
      t.string :publico_objetivo

      t.timestamps
    end
  end
end
