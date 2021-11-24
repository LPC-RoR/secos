module CapitanMenuHelper

	def optional_menu_item
		{
			recursos: false,
			contacto: false,
			ayuda: true
		}
	end

	def menu_base
	    [
	        ['',           '/app_recursos/administracion', 'admin', 'person-rolodex'],
	        ["Contenido",  "/tema_ayudas",                 'admin', 'stack'],
	        ["Procesos",   "/app_recursos/procesos",       'dog',   'radioactive']
	    ]
	end

	def menu
	    ## Menu principal de la aplicación
	    # [ 'Item del menú', 'link', 'tipo_item' ]
	    [
	        ['Ingreso Datos Anuales', '/app_recursos/ingreso_datos_anuales', 'nomina', 'clipboard-check'],
	        ['Público', '/app_repos/publico', 'nomina', 'archive']
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
		true
	end

end