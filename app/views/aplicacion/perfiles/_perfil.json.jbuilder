json.extract! perfil, :id, :email, :administrador_id, :usuario_id, :created_at, :updated_at
json.url perfil_url(perfil, format: :json)
