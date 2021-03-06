# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_23_125525) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aco_pos", force: :cascade do |t|
    t.integer "aco_id"
    t.integer "publico_objetivo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aco_id"], name: "index_aco_pos_on_aco_id"
    t.index ["publico_objetivo_id"], name: "index_aco_pos_on_publico_objetivo_id"
  end

  create_table "acos", force: :cascade do |t|
    t.string "titulo_evento"
    t.string "tipo_evento"
    t.string "otro_tipo_evento"
    t.string "alcance"
    t.integer "duracion_dias"
    t.datetime "fecha_inicio"
    t.datetime "fecha_termino"
    t.string "pais"
    t.string "ciudad"
    t.integer "n_asistentes"
    t.integer "n_expositores_milenio"
    t.integer "n_expositores_extranjeros"
    t.integer "n_expositores_nacionales"
    t.string "investigador_responsable"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "propietario"
    t.index ["propietario"], name: "index_acos_on_propietario"
  end

  create_table "actividad_difusiones", force: :cascade do |t|
    t.string "asociada_concurso_milenio"
    t.string "organizacion"
    t.string "alcance"
    t.string "titulo_evento"
    t.string "tipo_evento"
    t.string "otro_tipo_evento"
    t.datetime "fecha"
    t.string "pais_institucion"
    t.string "region_ubicacion"
    t.text "descripcion_actividad"
    t.integer "n_asistentes_estudiantes"
    t.integer "n_total_asistentes"
    t.integer "duracion"
    t.string "responsable_actividad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "propietario"
    t.index ["propietario"], name: "index_actividad_difusiones_on_propietario"
  end

  create_table "ad_is", force: :cascade do |t|
    t.integer "actividad_difusion_id"
    t.integer "investigador_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["actividad_difusion_id"], name: "index_ad_is_on_actividad_difusion_id"
    t.index ["investigador_id"], name: "index_ad_is_on_investigador_id"
  end

  create_table "ad_pos", force: :cascade do |t|
    t.integer "actividad_difusion_id"
    t.integer "publico_objetivo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["actividad_difusion_id"], name: "index_ad_pos_on_actividad_difusion_id"
    t.index ["publico_objetivo_id"], name: "index_ad_pos_on_publico_objetivo_id"
  end

  create_table "administradores", force: :cascade do |t|
    t.string "administrador"
    t.string "email"
    t.integer "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_administradores_on_email"
    t.index ["usuario_id"], name: "index_administradores_on_usuario_id"
  end

  create_table "ae_is", force: :cascade do |t|
    t.integer "articulo_entrevista_id"
    t.integer "investigador_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["articulo_entrevista_id"], name: "index_ae_is_on_articulo_entrevista_id"
    t.index ["investigador_id"], name: "index_ae_is_on_investigador_id"
  end

  create_table "ae_lis", force: :cascade do |t|
    t.integer "articulo_entrevista_id"
    t.integer "linea_investigacion_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["articulo_entrevista_id"], name: "index_ae_lis_on_articulo_entrevista_id"
    t.index ["linea_investigacion_id"], name: "index_ae_lis_on_linea_investigacion_id"
  end

  create_table "ae_pos", force: :cascade do |t|
    t.integer "articulo_entrevista_id"
    t.integer "publico_objetivo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["articulo_entrevista_id"], name: "index_ae_pos_on_articulo_entrevista_id"
    t.index ["publico_objetivo_id"], name: "index_ae_pos_on_publico_objetivo_id"
  end

  create_table "aporte_actividades", force: :cascade do |t|
    t.string "tipo"
    t.string "actividad_producto"
    t.string "colaborador"
    t.string "tipo_colaboracion"
    t.decimal "monto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "propietario"
    t.index ["propietario"], name: "index_aporte_actividades_on_propietario"
  end

  create_table "app_administradores", force: :cascade do |t|
    t.string "administrador"
    t.string "email"
    t.integer "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_app_administradores_on_email"
    t.index ["usuario_id"], name: "index_app_administradores_on_usuario_id"
  end

  create_table "app_archivos", force: :cascade do |t|
    t.string "archivo"
    t.string "owner_class"
    t.integer "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_class"], name: "index_app_archivos_on_owner_class"
    t.index ["owner_id"], name: "index_app_archivos_on_owner_id"
  end

  create_table "app_dir_dires", force: :cascade do |t|
    t.integer "parent_id"
    t.integer "child_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["child_id"], name: "index_app_dir_dires_on_child_id"
    t.index ["parent_id"], name: "index_app_dir_dires_on_parent_id"
  end

  create_table "app_directorios", force: :cascade do |t|
    t.string "directorio"
    t.integer "app_repo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "owner_class"
    t.integer "owner_id"
    t.index ["app_repo_id"], name: "index_app_directorios_on_app_repo_id"
    t.index ["directorio"], name: "index_app_directorios_on_directorio"
    t.index ["owner_class"], name: "index_app_directorios_on_owner_class"
    t.index ["owner_id"], name: "index_app_directorios_on_owner_id"
  end

  create_table "app_documentos", force: :cascade do |t|
    t.string "documento"
    t.integer "app_directorio_id"
    t.integer "app_repo_id"
    t.boolean "publico"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "owner_class"
    t.integer "owner_id"
    t.index ["app_directorio_id"], name: "index_app_documentos_on_app_directorio_id"
    t.index ["app_repo_id"], name: "index_app_documentos_on_app_repo_id"
    t.index ["owner_class"], name: "index_app_documentos_on_owner_class"
    t.index ["owner_id"], name: "index_app_documentos_on_owner_id"
  end

  create_table "app_nominas", force: :cascade do |t|
    t.string "nombre"
    t.string "email"
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_app_nominas_on_email"
  end

  create_table "app_perfiles", force: :cascade do |t|
    t.string "email"
    t.integer "usuario_id"
    t.integer "app_administrador_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["app_administrador_id"], name: "index_app_perfiles_on_app_administrador_id"
    t.index ["email"], name: "index_app_perfiles_on_email"
    t.index ["usuario_id"], name: "index_app_perfiles_on_usuario_id"
  end

  create_table "app_repos", force: :cascade do |t|
    t.string "repositorio"
    t.string "owner_class"
    t.integer "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_class"], name: "index_app_repos_on_owner_class"
    t.index ["owner_id"], name: "index_app_repos_on_owner_id"
    t.index ["repositorio"], name: "index_app_repos_on_repositorio"
  end

  create_table "archivos", force: :cascade do |t|
    t.integer "orden"
    t.string "archivo"
    t.string "nota"
    t.integer "documento_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "directorio_id"
    t.string "nombre"
    t.index ["directorio_id"], name: "index_archivos_on_directorio_id"
    t.index ["documento_id"], name: "index_archivos_on_documento_id"
    t.index ["orden"], name: "index_archivos_on_orden"
  end

  create_table "articulo_entrevistas", force: :cascade do |t|
    t.string "tema"
    t.string "actividad"
    t.text "descripcion"
    t.string "tipo_medio"
    t.string "nombre_medio"
    t.string "seccion"
    t.datetime "fecha_publicacion"
    t.string "alcance"
    t.string "link"
    t.string "adjunto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "propietario"
    t.index ["propietario"], name: "index_articulo_entrevistas_on_propietario"
  end

  create_table "ci_is", force: :cascade do |t|
    t.integer "comite_editorial_id"
    t.integer "investigador_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comite_editorial_id"], name: "index_ci_is_on_comite_editorial_id"
    t.index ["investigador_id"], name: "index_ci_is_on_investigador_id"
  end

  create_table "comite_editoriales", force: :cascade do |t|
    t.string "nombre_publicacion"
    t.string "categoria"
    t.string "otra_categoria"
    t.integer "anio_inicio"
    t.integer "anio_termino"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "propietario"
    t.index ["propietario"], name: "index_comite_editoriales_on_propietario"
  end

  create_table "datos_centros", force: :cascade do |t|
    t.string "nombre_espaniol"
    t.string "nombre_ingles"
    t.text "descripcion"
    t.string "acronimo"
    t.string "tipo_centro"
    t.string "ambito"
    t.string "estado"
    t.string "doc_aprobatorio"
    t.string "doc_extension"
    t.string "etapa"
    t.string "codigo_proyecto"
    t.string "decreto_aprobatorio"
    t.datetime "fecha_decreto_aprobatorio"
    t.datetime "fecha_inicio"
    t.datetime "fecha_termino"
    t.datetime "fecha_termino_extension"
    t.string "personalidad_juridica"
    t.string "direccion"
    t.string "telefono"
    t.string "fax"
    t.string "sitio_web"
    t.string "institucion_albergante"
    t.string "nombre_autoridad"
    t.string "nombres_investigador_responsable"
    t.string "paterno_investigador_responsable"
    t.string "materno_investigador_responsable"
    t.string "admin_nombre"
    t.string "admin_telefono"
    t.string "admin_email"
    t.string "admin_ejecutivo_rendiciones"
    t.string "cientif_nombre"
    t.string "cientif_email"
    t.string "pme_red_nombre"
    t.string "pme_red_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "remove_doc_aprobatorio"
    t.boolean "remove_doc_extension"
    t.string "propietario"
    t.index ["propietario"], name: "index_datos_centros_on_propietario"
    t.index ["remove_doc_aprobatorio"], name: "index_datos_centros_on_remove_doc_aprobatorio"
    t.index ["remove_doc_extension"], name: "index_datos_centros_on_remove_doc_extension"
  end

  create_table "directorios", force: :cascade do |t|
    t.string "directorio"
    t.integer "proyecto_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["directorio"], name: "index_directorios_on_directorio"
    t.index ["proyecto_id"], name: "index_directorios_on_proyecto_id"
  end

  create_table "disciplinas", force: :cascade do |t|
    t.string "disciplina"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["disciplina"], name: "index_disciplinas_on_disciplina"
  end

  create_table "documentos", force: :cascade do |t|
    t.string "documento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "directorio_id"
    t.boolean "publico"
    t.index ["directorio_id"], name: "index_documentos_on_directorio_id"
  end

  create_table "fj_dis", force: :cascade do |t|
    t.integer "formacion_joven_id"
    t.integer "disciplina_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["disciplina_id"], name: "index_fj_dis_on_disciplina_id"
    t.index ["formacion_joven_id"], name: "index_fj_dis_on_formacion_joven_id"
  end

  create_table "fj_is", force: :cascade do |t|
    t.integer "formacion_joven_id"
    t.integer "investigador_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["formacion_joven_id"], name: "index_fj_is_on_formacion_joven_id"
    t.index ["investigador_id"], name: "index_fj_is_on_investigador_id"
  end

  create_table "fj_nfores", force: :cascade do |t|
    t.integer "formacion_joven_id"
    t.integer "nivel_formacion_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["formacion_joven_id"], name: "index_fj_nfores_on_formacion_joven_id"
    t.index ["nivel_formacion_id"], name: "index_fj_nfores_on_nivel_formacion_id"
  end

  create_table "formacion_jovenes", force: :cascade do |t|
    t.string "tipo_documento"
    t.string "rut_pasaporte"
    t.string "nombres"
    t.string "paterno"
    t.string "materno"
    t.string "email"
    t.string "nacionalidad"
    t.string "genero"
    t.string "profesion_titulo_grado"
    t.string "universidad_formacion"
    t.string "otra_universidad_formacion"
    t.string "region_universidad_formacion"
    t.string "universidad_origen"
    t.string "pais_universidad_origen"
    t.datetime "fecha_nacimiento"
    t.string "tipo_financiamiento"
    t.decimal "monto"
    t.string "relacion_centro"
    t.datetime "fecha_desvinculacion"
    t.string "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "fecha_ingreso_centro"
    t.string "propietario"
    t.index ["propietario"], name: "index_formacion_jovenes_on_propietario"
  end

  create_table "fuente_financiamientos", force: :cascade do |t|
    t.string "fondos"
    t.string "otro_fondo"
    t.decimal "monto_pesos"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "propietario"
    t.index ["propietario"], name: "index_fuente_financiamientos_on_propietario"
  end

  create_table "grado_academicos", force: :cascade do |t|
    t.string "grado_academico"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "h_imagenes", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nombre"], name: "index_h_imagenes_on_nombre"
  end

  create_table "h_links", force: :cascade do |t|
    t.string "texto"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "h_temas", force: :cascade do |t|
    t.string "tema"
    t.string "detalle"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tema"], name: "index_h_temas_on_tema"
  end

  create_table "hlp_pasos", force: :cascade do |t|
    t.integer "orden"
    t.string "paso"
    t.text "detalle"
    t.integer "hlp_tutorial_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hlp_tutorial_id"], name: "index_hlp_pasos_on_hlp_tutorial_id"
    t.index ["orden"], name: "index_hlp_pasos_on_orden"
  end

  create_table "hlp_tutoriales", force: :cascade do |t|
    t.string "tutorial"
    t.string "clave"
    t.text "detalle"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clave"], name: "index_hlp_tutoriales_on_clave"
  end

  create_table "i_dis", force: :cascade do |t|
    t.integer "investigador_id"
    t.integer "disciplina_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["disciplina_id"], name: "index_i_dis_on_disciplina_id"
    t.index ["investigador_id"], name: "index_i_dis_on_investigador_id"
  end

  create_table "i_gas", force: :cascade do |t|
    t.integer "investigador_id"
    t.integer "grado_academico_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grado_academico_id"], name: "index_i_gas_on_grado_academico_id"
    t.index ["investigador_id"], name: "index_i_gas_on_investigador_id"
  end

  create_table "i_lis", force: :cascade do |t|
    t.integer "investigador_id"
    t.integer "linea_investigacion_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["investigador_id"], name: "index_i_lis_on_investigador_id"
    t.index ["linea_investigacion_id"], name: "index_i_lis_on_linea_investigacion_id"
  end

  create_table "imagenes", force: :cascade do |t|
    t.integer "orden"
    t.string "imagen"
    t.string "nota"
    t.integer "linea_id"
    t.integer "directorio_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nombre"
    t.index ["directorio_id"], name: "index_imagenes_on_directorio_id"
    t.index ["imagen"], name: "index_imagenes_on_imagen"
    t.index ["linea_id"], name: "index_imagenes_on_linea_id"
    t.index ["orden"], name: "index_imagenes_on_orden"
  end

  create_table "investigadores", force: :cascade do |t|
    t.string "tipo_documento"
    t.string "rut_pasaporte"
    t.string "nombres"
    t.string "paterno"
    t.string "materno"
    t.string "direccion_correspondencia"
    t.datetime "fecha_nacimiento"
    t.string "otra_profesion"
    t.string "institucion"
    t.string "cargo"
    t.string "email"
    t.string "telefono_1"
    t.string "telefono_2"
    t.string "celular"
    t.string "fuente_financiamiento"
    t.string "relacion_centro"
    t.datetime "fecha_inicio"
    t.datetime "fecha_termino"
    t.string "vigencia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "comuna"
    t.string "genero"
    t.string "categoria"
    t.integer "horas_dedicacion"
    t.string "region"
    t.string "nacionalidad"
    t.string "profesion"
    t.string "propietario"
    t.index ["propietario"], name: "index_investigadores_on_propietario"
  end

  create_table "li_dis", force: :cascade do |t|
    t.integer "linea_investigacion_id"
    t.integer "disciplina_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["disciplina_id"], name: "index_li_dis_on_disciplina_id"
    t.index ["linea_investigacion_id"], name: "index_li_dis_on_linea_investigacion_id"
  end

  create_table "linea_investigaciones", force: :cascade do |t|
    t.string "linea_investigacion"
    t.text "objetivo"
    t.text "descripcion"
    t.text "conceptos_clave"
    t.datetime "fecha_inicio"
    t.datetime "fecha_termino"
    t.string "validez"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "propietario"
    t.index ["propietario"], name: "index_linea_investigaciones_on_propietario"
  end

  create_table "mensajes", force: :cascade do |t|
    t.string "mensaje"
    t.string "tipo"
    t.string "estado"
    t.string "email"
    t.datetime "fecha_envio"
    t.text "detalle"
    t.integer "perfil_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_mensajes_on_email"
    t.index ["estado"], name: "index_mensajes_on_estado"
    t.index ["fecha_envio"], name: "index_mensajes_on_fecha_envio"
    t.index ["perfil_id"], name: "index_mensajes_on_perfil_id"
    t.index ["tipo"], name: "index_mensajes_on_tipo"
  end

  create_table "nivel_formaciones", force: :cascade do |t|
    t.string "nivel_en_formacion"
    t.string "titulo_grado"
    t.text "descripcion"
    t.datetime "fecha_inicio"
    t.datetime "fecha_obtencion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "investigador_id"
    t.integer "formacion_joven_id"
    t.index ["formacion_joven_id"], name: "index_nivel_formaciones_on_formacion_joven_id"
    t.index ["investigador_id"], name: "index_nivel_formaciones_on_investigador_id"
  end

  create_table "nominas", force: :cascade do |t|
    t.string "email"
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nombre"
    t.index ["email"], name: "index_nominas_on_email"
  end

  create_table "p_lis", force: :cascade do |t|
    t.integer "publicacion_id"
    t.integer "linea_investigacion_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["linea_investigacion_id"], name: "index_p_lis_on_linea_investigacion_id"
    t.index ["publicacion_id"], name: "index_p_lis_on_publicacion_id"
  end

  create_table "pais", force: :cascade do |t|
    t.string "pais"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "paises", force: :cascade do |t|
    t.string "pais"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pasantia_externos", force: :cascade do |t|
    t.string "tipo_pasante"
    t.string "nombres"
    t.string "paterno"
    t.string "materno"
    t.string "grado_academico"
    t.string "pais"
    t.string "institucion_procedencia"
    t.string "institucion_pasantia"
    t.string "region"
    t.text "descripcion_pasantia"
    t.datetime "fecha_inicio"
    t.datetime "fecha_termino"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "propietario"
    t.index ["propietario"], name: "index_pasantia_externos_on_propietario"
  end

  create_table "pasantia_internos", force: :cascade do |t|
    t.string "estudiante"
    t.string "institucion"
    t.string "pais"
    t.string "tutor"
    t.string "proyecto"
    t.text "descripcion"
    t.datetime "fecha_inicio"
    t.datetime "fecha_termino"
    t.string "unidad_departamento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "propietario"
    t.index ["propietario"], name: "index_pasantia_internos_on_propietario"
  end

  create_table "pasos", force: :cascade do |t|
    t.integer "orden"
    t.string "paso"
    t.text "detalle"
    t.integer "tutorial_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["orden"], name: "index_pasos_on_orden"
    t.index ["tutorial_id"], name: "index_pasos_on_tutorial_id"
  end

  create_table "pat_pais", force: :cascade do |t|
    t.integer "patente_id"
    t.integer "pais_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pais_id"], name: "index_pat_pais_on_pais_id"
    t.index ["patente_id"], name: "index_pat_pais_on_patente_id"
  end

  create_table "patentes", force: :cascade do |t|
    t.string "titulo"
    t.text "descripcion"
    t.string "categoria"
    t.string "solicitante"
    t.string "inventor"
    t.string "n_solicitud"
    t.datetime "fecha_solicitud"
    t.string "estado"
    t.string "n_registro"
    t.datetime "fecha_registro"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "propietario"
    t.index ["propietario"], name: "index_patentes_on_propietario"
  end

  create_table "pc_fjos", force: :cascade do |t|
    t.integer "presentacion_congreso_id"
    t.integer "formacion_joven_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["formacion_joven_id"], name: "index_pc_fjos_on_formacion_joven_id"
    t.index ["presentacion_congreso_id"], name: "index_pc_fjos_on_presentacion_congreso_id"
  end

  create_table "pc_iotros", force: :cascade do |t|
    t.integer "presentacion_congreso_id"
    t.integer "investigador_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["investigador_id"], name: "index_pc_iotros_on_investigador_id"
    t.index ["presentacion_congreso_id"], name: "index_pc_iotros_on_presentacion_congreso_id"
  end

  create_table "pc_is", force: :cascade do |t|
    t.integer "presentacion_congreso_id"
    t.integer "investigador_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["investigador_id"], name: "index_pc_is_on_investigador_id"
    t.index ["presentacion_congreso_id"], name: "index_pc_is_on_presentacion_congreso_id"
  end

  create_table "perfiles", force: :cascade do |t|
    t.string "email"
    t.integer "administrador_id"
    t.integer "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["administrador_id"], name: "index_perfiles_on_administrador_id"
    t.index ["email"], name: "index_perfiles_on_email"
    t.index ["usuario_id"], name: "index_perfiles_on_usuario_id"
  end

  create_table "pis", force: :cascade do |t|
    t.integer "publicacion_id"
    t.integer "investigador_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["investigador_id"], name: "index_pis_on_investigador_id"
    t.index ["publicacion_id"], name: "index_pis_on_publicacion_id"
  end

  create_table "pp_fjos", force: :cascade do |t|
    t.integer "producto_pme_id"
    t.integer "formacion_joven_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["formacion_joven_id"], name: "index_pp_fjos_on_formacion_joven_id"
    t.index ["producto_pme_id"], name: "index_pp_fjos_on_producto_pme_id"
  end

  create_table "pp_is", force: :cascade do |t|
    t.integer "producto_pme_id"
    t.integer "investigador_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["investigador_id"], name: "index_pp_is_on_investigador_id"
    t.index ["producto_pme_id"], name: "index_pp_is_on_producto_pme_id"
  end

  create_table "pp_pos", force: :cascade do |t|
    t.integer "producto_pme_id"
    t.integer "publico_objetivo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["producto_pme_id"], name: "index_pp_pos_on_producto_pme_id"
    t.index ["publico_objetivo_id"], name: "index_pp_pos_on_publico_objetivo_id"
  end

  create_table "presentacion_congresos", force: :cascade do |t|
    t.string "alcance"
    t.string "tipo"
    t.string "otro_tipo"
    t.string "organizacion"
    t.string "nombre_presentacion"
    t.string "nombre_evento"
    t.string "link_presentacion"
    t.string "ciudad"
    t.string "pais"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "fecha"
    t.string "propietario"
    t.index ["propietario"], name: "index_presentacion_congresos_on_propietario"
  end

  create_table "producto_pmes", force: :cascade do |t|
    t.datetime "fecha"
    t.string "producto"
    t.text "objetivo"
    t.string "alcance"
    t.string "tipo_producto"
    t.string "otro_tipo_producto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "propietario"
    t.index ["propietario"], name: "index_producto_pmes_on_propietario"
  end

  create_table "publicaciones", force: :cascade do |t|
    t.datetime "fecha_publicacion"
    t.string "categoria_publicacion"
    t.string "otra_categoria"
    t.string "titulo"
    t.string "autores"
    t.string "fuente"
    t.string "volumen"
    t.string "numero"
    t.string "pagina_inicial"
    t.string "issn"
    t.string "doi"
    t.string "cuartil"
    t.integer "n_autores_inv_asociados"
    t.string "n_autores_estudiantes"
    t.string "n_autores_otros"
    t.string "ligada_red_formal"
    t.string "red_formal"
    t.string "documento_relacionado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "propietario"
    t.index ["propietario"], name: "index_publicaciones_on_propietario"
  end

  create_table "publico_objetivos", force: :cascade do |t|
    t.string "publico_objetivo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pyh_centros", force: :cascade do |t|
    t.string "premio"
    t.datetime "fecha"
    t.string "contribucion"
    t.string "institucion"
    t.string "pais"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "propietario"
    t.index ["propietario"], name: "index_pyh_centros_on_propietario"
  end

  create_table "pyh_investigadores", force: :cascade do |t|
    t.string "investigador"
    t.string "premio"
    t.datetime "fecha"
    t.string "contribucion"
    t.string "institucion"
    t.string "pais"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "propietario"
    t.index ["propietario"], name: "index_pyh_investigadores_on_propietario"
  end

  create_table "r_colaboraciones", force: :cascade do |t|
    t.string "nombre_red"
    t.text "objetivo"
    t.text "descripcion"
    t.string "institucion_co_participante"
    t.string "tipo_productos"
    t.string "n_productos"
    t.integer "n_investigadores_milenio"
    t.integer "n_postdoc_alumnos_milenio"
    t.integer "n_investigadores_externos"
    t.integer "n_postdoc_alumnos_externos"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "propietario"
    t.index ["propietario"], name: "index_r_colaboraciones_on_propietario"
  end

  create_table "rc_is", force: :cascade do |t|
    t.integer "r_colaboracion_id"
    t.integer "investigador_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["investigador_id"], name: "index_rc_is_on_investigador_id"
    t.index ["r_colaboracion_id"], name: "index_rc_is_on_r_colaboracion_id"
  end

  create_table "rf_colaboraciones", force: :cascade do |t|
    t.string "nombre_red"
    t.text "objetivo"
    t.text "descripcion"
    t.string "alcance"
    t.integer "n_investigadores_milenio"
    t.integer "n_postdoc_estudiantes_milenio"
    t.integer "n_investigadores_externos"
    t.integer "n_postdoc_estudiantes_externos"
    t.string "instituciones"
    t.string "sitio_web"
    t.datetime "fecha_inicio"
    t.datetime "fecha_termino"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "propietario"
    t.index ["propietario"], name: "index_rf_colaboraciones_on_propietario"
  end

  create_table "rfc_as", force: :cascade do |t|
    t.integer "rf_colaboracion_id"
    t.integer "investigador_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["investigador_id"], name: "index_rfc_as_on_investigador_id"
    t.index ["rf_colaboracion_id"], name: "index_rfc_as_on_rf_colaboracion_id"
  end

  create_table "rfc_fjos", force: :cascade do |t|
    t.integer "rf_colaboracion_id"
    t.integer "formacion_joven_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["formacion_joven_id"], name: "index_rfc_fjos_on_formacion_joven_id"
    t.index ["rf_colaboracion_id"], name: "index_rfc_fjos_on_rf_colaboracion_id"
  end

  create_table "rfc_is", force: :cascade do |t|
    t.integer "rf_colaboracion_id"
    t.integer "investigador_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["investigador_id"], name: "index_rfc_is_on_investigador_id"
    t.index ["rf_colaboracion_id"], name: "index_rfc_is_on_rf_colaboracion_id"
  end

  create_table "sb_administradores", force: :cascade do |t|
    t.string "administrador"
    t.string "email"
    t.integer "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_sb_administradores_on_email"
    t.index ["usuario_id"], name: "index_sb_administradores_on_usuario_id"
  end

  create_table "sb_elementos", force: :cascade do |t|
    t.integer "orden"
    t.integer "nivel"
    t.string "tipo"
    t.string "elemento"
    t.string "acceso"
    t.boolean "activo"
    t.integer "sb_lista_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "despliegue"
    t.string "controlador"
    t.index ["orden"], name: "index_sb_elementos_on_orden"
    t.index ["sb_lista_id"], name: "index_sb_elementos_on_sb_lista_id"
  end

  create_table "sb_listas", force: :cascade do |t|
    t.string "lista"
    t.string "acceso"
    t.boolean "activa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "link"
  end

  create_table "subs", force: :cascade do |t|
    t.integer "parent_id"
    t.integer "child_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["child_id"], name: "index_subs_on_child_id"
    t.index ["parent_id"], name: "index_subs_on_parent_id"
  end

  create_table "tecnico_administrativos", force: :cascade do |t|
    t.string "tipo_documento"
    t.string "rut_pasaporte"
    t.string "nombres"
    t.string "paterno"
    t.string "materno"
    t.datetime "fecha_nacimiento"
    t.string "nacionalidad"
    t.string "genero"
    t.string "categoria"
    t.string "relacion_centro"
    t.string "tipo_financiamiento"
    t.datetime "fecha_ingreso"
    t.datetime "fecha_desvinculacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "propietario"
    t.index ["propietario"], name: "index_tecnico_administrativos_on_propietario"
  end

  create_table "tema_ayudas", force: :cascade do |t|
    t.integer "orden"
    t.string "tema_ayuda"
    t.text "detalle"
    t.string "tipo"
    t.string "ilustracion"
    t.string "ilustracion_cache"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "activo"
    t.string "credito_foto"
    t.index ["activo"], name: "index_tema_ayudas_on_activo"
    t.index ["orden"], name: "index_tema_ayudas_on_orden"
    t.index ["tipo"], name: "index_tema_ayudas_on_tipo"
  end

  create_table "tesis_finalizadas", force: :cascade do |t|
    t.string "estudiante"
    t.string "nivel_formacion"
    t.string "nombre_tesis"
    t.datetime "fecha_aprobacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "propietario"
    t.index ["propietario"], name: "index_tesis_finalizadas_on_propietario"
  end

  create_table "tf_lis", force: :cascade do |t|
    t.integer "tesis_finalizada_id"
    t.integer "linea_investigacion_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["linea_investigacion_id"], name: "index_tf_lis_on_linea_investigacion_id"
    t.index ["tesis_finalizada_id"], name: "index_tf_lis_on_tesis_finalizada_id"
  end

  create_table "tutoriales", force: :cascade do |t|
    t.integer "orden"
    t.string "tutorial"
    t.text "detalle"
    t.integer "tema_ayuda_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["orden"], name: "index_tutoriales_on_orden"
    t.index ["tema_ayuda_id"], name: "index_tutoriales_on_tema_ayuda_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
  end

  create_table "vinculos", force: :cascade do |t|
    t.string "actividad"
    t.string "tipo_conexion"
    t.string "tipo_actividad"
    t.string "otro_tipo_actividad"
    t.text "objetivo_actividad"
    t.datetime "fecha_inicio"
    t.datetime "fecha_termino"
    t.string "investigador_encargado"
    t.decimal "fondos_pesos"
    t.decimal "fondos_dolares"
    t.decimal "costo_vinculo_pesos"
    t.decimal "costo_vinculo_dolares"
    t.string "nombre_institucion"
    t.string "pais_institucion"
    t.string "region_institucion"
    t.string "ciudad"
    t.string "tipo_institucion"
    t.string "otro_tipo_institucion"
    t.string "sector_economico"
    t.string "otro_sector_economico"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "propietario"
    t.index ["propietario"], name: "index_vinculos_on_propietario"
  end

end
