module CapitanMenuHelper

	def optional_menu_item
		{
			recursos: false,
			contacto: false,
			ayuda: true
		}
	end

	def menu
	    ## Menu principal de la aplicación
	    # [ 'Item del menú', 'link', 'tipo_item' ]
	    [
	        ['Ingreso Datos Anuales', '/recursos/ingreso_datos_anuales', 'usuario'],
	        ['Administración',        '/recursos/administracion',          'admin'],
	        ['Documentos',            directorios_path,                  'usuario']
	    ]

	end

	def menu_base
	    [
	        ["Temas Ayuda",           "/tema_ayudas",                      'admin'],
	        ["Procesos",              "/recursos/procesos",                  'dog']
	    ]
	end

	def dropdown_items(item)
		case item
		when 'Investigación'
			[
#				['Líneas de Investigación', root_path],
#				['Investigadores Centro', root_path],
#				['Actividades Científicas Organizadas', root_path],
#				['Publicaciones', root_path],
#				['Propiedad Intelectual', root_path],
#				['Presentaciones Congresos', root_path],
#				['Premios y Honores', root_path]
			]
		end
	end

	def display_item_app(item, tipo_item)
		case item
		when 'Temas'
			session[:hay_proyecto] and Proyecto.find(session[:proyecto_activo]['id']).carpetas_personalizadas.any?
		else
			true
		end
	end

end