class CreateGradoAcademicos < ActiveRecord::Migration[5.2]
  def change
    create_table :grado_academicos do |t|
      t.string :grado_academico

      t.timestamps
    end
  end
end
