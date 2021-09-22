class ChangePublicoObjetivo < ActiveRecord::Migration[5.2]
  def change
  	rename_column :ae_pos, :publico_objetivo, :publico_objetivo_id
  end
end
