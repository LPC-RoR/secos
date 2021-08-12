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

ActiveRecord::Schema.define(version: 2021_08_12_153155) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "administradores", force: :cascade do |t|
    t.string "administrador"
    t.string "email"
    t.integer "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_administradores_on_email"
    t.index ["usuario_id"], name: "index_administradores_on_usuario_id"
  end

  create_table "archivos", force: :cascade do |t|
    t.integer "orden"
    t.string "archivo"
    t.string "nota"
    t.integer "documento_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["documento_id"], name: "index_archivos_on_documento_id"
    t.index ["orden"], name: "index_archivos_on_orden"
  end

  create_table "documentos", force: :cascade do |t|
    t.string "documento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.index ["activo"], name: "index_tema_ayudas_on_activo"
    t.index ["orden"], name: "index_tema_ayudas_on_orden"
    t.index ["tipo"], name: "index_tema_ayudas_on_tipo"
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

end
