class AddPropietarioToDatosCentros < ActiveRecord::Migration[5.2]
  def change
    add_column :datos_centros, :propietario, :string
    add_index :datos_centros, :propietario
    add_column :linea_investigaciones, :propietario, :string
    add_index :linea_investigaciones, :propietario
    add_column :investigadores, :propietario, :string
    add_index :investigadores, :propietario
    add_column :acos, :propietario, :string
    add_index :acos, :propietario
    add_column :publicaciones, :propietario, :string
    add_index :publicaciones, :propietario
    add_column :patentes, :propietario, :string
    add_index :patentes, :propietario
    add_column :presentacion_congresos, :propietario, :string
    add_index :presentacion_congresos, :propietario
    add_column :pyh_investigadores, :propietario, :string
    add_index :pyh_investigadores, :propietario
    add_column :pyh_centros, :propietario, :string
    add_index :pyh_centros, :propietario
    add_column :comite_editoriales, :propietario, :string
    add_index :comite_editoriales, :propietario
    add_column :formacion_jovenes, :propietario, :string
    add_index :formacion_jovenes, :propietario
    add_column :tesis_finalizadas, :propietario, :string
    add_index :tesis_finalizadas, :propietario
    add_column :pasantia_internos, :propietario, :string
    add_index :pasantia_internos, :propietario
    add_column :pasantia_externos, :propietario, :string
    add_index :pasantia_externos, :propietario
    add_column :rf_colaboraciones, :propietario, :string
    add_index :rf_colaboraciones, :propietario
    add_column :r_colaboraciones, :propietario, :string
    add_index :r_colaboraciones, :propietario
    add_column :actividad_difusiones, :propietario, :string
    add_index :actividad_difusiones, :propietario
    add_column :producto_pmes, :propietario, :string
    add_index :producto_pmes, :propietario
    add_column :aporte_actividades, :propietario, :string
    add_index :aporte_actividades, :propietario
    add_column :articulo_entrevistas, :propietario, :string
    add_index :articulo_entrevistas, :propietario
    add_column :vinculos, :propietario, :string
    add_index :vinculos, :propietario
    add_column :tecnico_administrativos, :propietario, :string
    add_index :tecnico_administrativos, :propietario
    add_column :fuente_financiamientos, :propietario, :string
    add_index :fuente_financiamientos, :propietario
  end
end
