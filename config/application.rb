require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Secos
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    config.encoding = "utf-8"
    
    config.i18n.default_locale = :es
    
    ## ------------------------------------------------- 0p
    ## ------------------------------------------------- STANDARD

    config.look_parameters = {
        image_sizes: ['entire', 'half', 'quarter', 'thumb'],
        colors: ['primary', 'secondary', 'success', 'danger', 'warning', 'info', 'light', 'dark', 'muted', 'white']
    }

    ## ------------------------------------------------- APARIENCIA APLICACION

    config.look_app = {
        aplicacion: {
            nombre_aplicacion: 'Secos',
            home_link: 'http://www.secos.cl',
            portada: {
                active: false,
                size: nil,
                clase: 'mx-auto d-block'
            },
            init: {
                size: 'half',
                clase: 'mx-auto d-block',
                titulo_size: 1,
                titulo_color: 'primary',
                detalle_size: 6,
                detalle_color: 'primary'
            },
            foot: {
                size: 'quarter',
                clase: 'mx-auto d-block'
            },
            help: {
                size: 'quarter',
                clase: 'mx-auto d-block'
            }
        },
        navbar: {
            color: 'primary',
            nomenu_controllers: ['confirmations', 'mailer', 'passwords', 'registrations', 'sessions', 'unlocks'],
            item_contacto: true,
            item_ayuda: true
        },
        look_elementos: {
            app: {
                color: 'primary'
            },
            help: {
                color: 'secondary',
                controllers: ['tema_ayudas', 'tutoriales', 'pasos', 'mensajes']
            },
            data: {
                color: 'info',
                controllers: ['etapas', 'tablas', 'lineas', 'especificaciones', 'archivos', 'imagenes']
            }
        }
    }

    ## ------------------------------------------------- TABLA

    config.tables = {
        exceptions: {
            titulo: {
                'publicaciones' => ['self'],
                'carpetas' => ['publicaciones', 'proyectos'],
                'temas' => ['publicaciones']
            },
            estados: {},
            tabs: {
                'publicaciones' => ['ingresos', 'publicaciones'],
                'proyectos' => ['self'],
                'clasificaciones' => ['temas']
            },
            paginas: {
                'publicaciones' => ['*']
            },
            nuevo: {
                'publicaciones' => ['self', 'ingresos'],
                'textos' => ['self'],
                'versiones' => ['proyectos'],
                'carpetas' => ['publicaciones', 'proyectos'],
                'temas' => ['publicaciones'],
                'administradores' => ['recursos']
            },
            inline_form: {
                'proyectos' => ['*']
            }
        },
        tabs: {
            'publicaciones' => {
                'ingresos' => ['ingreso', 'duplicado', 'papelera', 'publicada'],
                'publicaciones' => ['Selección', 'Proceso'] 
            },
            'proyectos' => {
                'proyectos' => ['Administrados', 'Participaciones']
            },
            'clasificaciones' => {
                'temas' => ['referencia', 'complementario', 'controversial', 'revisar']
            }
        },
        bt_fields: {
            'Clasificacion' => {
                'texto' => 'texto'
            },
            'Proyecto' => {
                'email' => 'administrador'
            }
        },
        alias: {
            'ingresos' => 'publicaciones'
        },
        sortable: {
        }
    }

    ## ------------------------------------------------- SHOW

    config.show = {
        partial_links: [],
        links: ['Publicacion'],
        bt_links: {
            'Publicacion' => ['revista']
        },
        hmt_links: {
            'Publicacion' => ['investigadores']
        },
        status: []
    }

  end
end
