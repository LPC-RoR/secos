class CreateTfLis < ActiveRecord::Migration[5.2]
  def change
    create_table :tf_lis do |t|
      t.integer :tesis_finalizada_id
      t.integer :LineaInvestigacion

      t.timestamps
    end
    add_index :tf_lis, :tesis_finalizada_id
    add_index :tf_lis, :LineaInvestigacion
  end
end
