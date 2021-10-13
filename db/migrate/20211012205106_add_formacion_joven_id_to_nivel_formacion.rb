class AddFormacionJovenIdToNivelFormacion < ActiveRecord::Migration[5.2]
  def change
    add_column :nivel_formaciones, :formacion_joven_id, :integer
    add_index :nivel_formaciones, :formacion_joven_id
  end
end
