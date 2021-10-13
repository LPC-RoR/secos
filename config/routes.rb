Rails.application.routes.draw do

  resources :pc_iotros
  resources :pp_fjos
  resources :rfc_fjos
  resources :pc_fjos
  resources :fuente_financiamientos
  resources :tecnico_administrativos
  resources :vinculos
  resources :ae_is
  resources :ae_lis
  resources :ae_pos
  resources :articulo_entrevistas
  resources :aporte_actividades
  resources :pp_pos
  resources :pp_is
  resources :producto_pmes
  resources :ad_is
  resources :ad_pos
  resources :actividad_difusiones
  resources :rc_is
  resources :r_colaboraciones
  resources :rfc_as
  resources :rfc_is
  resources :rf_colaboraciones
  resources :pasantia_externos
  resources :pasantia_internos
  resources :tf_lis
  resources :tesis_finalizadas
  resources :fj_is
  resources :fj_dis
  resources :nivel_formaciones
  resources :formacion_jovenes
  resources :ci_is
  resources :comite_editoriales
  resources :pyh_centros
  resources :pyh_investigadores
  resources :pc_is
  resources :presentacion_congresos
  resources :pat_pais
  resources :paises
  resources :patentes
  resources :pis
  resources :p_lis
  resources :publicaciones
  resources :aco_pos
  resources :publico_objetivos
  resources :acos
  resources :i_dis
  resources :i_lis
  resources :grado_academicos
  resources :li_dis
  resources :investigadores
  resources :disciplinas
  resources :linea_investigaciones
  resources :datos_centros

  scope module: 'aplicacion' do
    resources :recursos do
      collection do
        match :home, via: :get
        match :ingreso_datos_anuales, via: :get
        match :inicia_sesion, via: :get
        match :procesos, via: :get
        match :administracion, via: :get
        match :borrar_archivos, via: :get
      end
    end
    resources :perfiles do
      match :desvincular, via: :get, on: :member
    end
    resources :administradores
    resources :nominas
    resources :archivos
    resources :imagenes
    resources :directorios do
      match :nuevo, via: :post, on: :collection
    end
    resources :subs
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

#  root 'aplicacion/recursos#home'
  root 'aplicacion/recursos#ingreso_datos_anuales'
  
end
