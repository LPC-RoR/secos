Rails.application.routes.draw do

  resources :tema_ayudas
  scope module: 'aplicacion' do
    resources :recursos do
      collection do
        match :home, via: :get
        match :inicia_sesion, via: :get
        match :bibliografia, via: :get
        match :procesos, via: :get
        match :administracion, via: :get
        match :borrar_archivos, via: :get
      end
    end
    resources :perfiles do
      match :desvincular, via: :get, on: :member
    end
    resources :administradores
    resources :archivos
    resources :documentos do
      resources :archivos
    end
  end

  scope module: 'help' do
#    resources :conversaciones
    resources :mensajes
    resources :pasos
    resources :tema_ayudas do
      resources :tutoriales
    end
    resources :tutoriales do
      resources :pasos
    end
  end

  devise_for :usuarios, controllers: {
        confirmations: 'usuarios/confirmations',
#        omniauth_callbacks: 'usuarios/omniauth_callbacks',
        passwords: 'usuarios/passwords',
        registrations: 'usuarios/registrations',
        sessions: 'usuarios/sessions',
        unlocks: 'usuarios/unlocks'
      }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
