class CreatePyhInvestigadores < ActiveRecord::Migration[5.2]
  def change
    create_table :pyh_investigadores do |t|
      t.string :investigador
      t.string :premio
      t.datetime :fecha
      t.string :contribucion
      t.string :institucion
      t.string :pais

      t.timestamps
    end
  end
end
