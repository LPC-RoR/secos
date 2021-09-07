module RecursosHelper
	## ------------------------------------------------------- MENU

	def menu
	    ## Menu principal de la aplicación
	    # [0] : Item del menú
	    # [1] : Link del ítem
	    # [2] : Tipo de ítem {'admin', 'usuario', 'anonimo', 'excluir'}
	    # se usa directamente en 0p/navbar/_navbar.html.erb
	    [
	        ['Ingreso Datos Anuales', '/recursos/ingreso_datos_anuales', 'usuario'],
	        ['Administración',        '/recursos/administracion',          'admin'],
	        ["Temas Ayuda",           "/tema_ayudas",                      'admin'],
	        ["Procesos",              "/recursos/procesos",                  'dog']
	    ]
	end

	def dropdown_items(item)
		case item
		when 'Investigación'
			[
				['Líneas de Investigación', root_path],
				['Investigadores Centro', root_path],
				['Actividades Científicas Organizadas', root_path],
				['Publicaciones', root_path],
				['Propiedad Intelectual', root_path],
				['Presentaciones Congresos', root_path],
				['Premios y Honores', root_path]
			]
		end
	end

	def side_list(list_name)
		case list_name
		when 'Ingreso Datos Anuales'
			[
				[1, 'item', 'Datos Centro'],
				[1, 'list', 'Investigación'],
				[2, 'item', 'Líneas de Investigación'],
				[2, 'item', 'Investigadores Centro'],
				[2, 'item', 'Actividades Científicas Organizadas'],
				[2, 'item', 'Publicaciones'],
				[2, 'list', 'Propiedad Intelectual'],
				[3, 'item', 'Patentes'],
				[2, 'item', 'Presentaciones Congresos'],
				[2, 'list', 'Premios y Honores'],
				[3, 'item', 'P. y H. Investigadores'],
				[3, 'item', 'P. y H. Centro'],
				[1, 'item', 'Comités Editoriales'],
				[1, 'list', 'Formación Capital Humano'],
				[2, 'item', 'Formación de jóvenes'],
				[2, 'item', 'Tésis Finalizadas'],
				[2, 'list', 'Pasantías'],
				[3, 'item', 'Internos'],
				[3, 'item', 'Externos'],
				[1, 'list', 'Redes de Colaboración'],
				[2, 'item', 'Redes Formales de Colaboración'],
				[2, 'item', 'Redes de Colaboración'],
				[1, 'list', 'Actividades de Difusión y PME'],
				[2, 'item', 'Actividades de Difusión'],
				[2, 'item', 'Producto de PME (concurso milenio)'],
				[2, 'item', 'Fondos Actividades de Difusión (concurso milenio)'],
				[2, 'item', 'Artículos y Entrevistas en Medios de Comunicación'],
				[1, 'item', 'Vínculos con Otros Sectores'],
				[1, 'item', 'Personal Técnico y Administrativo'],
				[1, 'item', 'Fuentes de Financiamiento']
			]
		when 'Administracion'
			[
				[1, 'item', 'Administradores'],
				[1, 'item', 'Nómina'],
				[1, 'item', 'Perfiles'],
				[1, 'list', 'Archivos'],
				[2, 'item', 'Datos Centro'],
				[2, 'item', 'Disciplinas'],
				[2, 'item', 'Grados Académicos'],
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

	## ------------------------------------------------------- TABLA | BTNS

	def tr_row(objeto)
		case objeto.class.name
		when 'Publicacion'
			if usuario_signed_in?
				'default'
			else
				'default'
			end
		else
			'default'
		end
	end

	def crud_conditions(objeto, btn)
		case objeto.class.name
		when 'Carga'
			objeto.estado == 'ingreso'
		when 'Publicacion'
			objeto.origen == 'ingreso'
		when 'Carpeta'
			not Carpeta::NOT_MODIFY.include?(objeto.carpeta) and controller_name == 'proyectos'
		when 'Texto'
			false
		when 'Clasificacion'
			false
		when 'Tema'
			['publicaciones', 'temas'].include?(controller_name)
		when 'Proyecto'
			controller_name == 'proyectos'
		when 'Tabla'
			controller_name == 'datos'
		when 'Perfil'
			false
		when 'Sumario'
			false
		else
			['TemaAyuda', 'Tutorial', 'Paso'].include?(objeto.class.name) ? (usuario_signed_in? ? session[:es_administrador] : false) : true
		end
	end

	def x_conditions(objeto, btn)
		case objeto.class.name
		when 'Carpeta'
			case btn
			when 'Desasignar'
				controller_name == 'publicaciones' and (not Carpeta::NOT_MODIFY.include?(objeto.carpeta)) and action_name == 'show' and @coleccion['carpetas'].count > 1
			when 'Eliminar'
				controller_name == 'publicaciones' and (not Carpeta::NOT_MODIFY.include?(objeto.carpeta)) and action_name == 'show' and objeto.temas.empty? and @coleccion['carpetas'].count > 1 and objeto.publicaciones.count == 1
			when 'Sacar'
				controller_name == 'reportes' and action_name == 'show'
			end
		when 'Carga'
			objeto.estado == 'ingreso'
		when 'Texto'
			controller_name == 'publicaciones'
		when 'Clasificacion'
			objeto.clasificacion != btn
		when 'Tema'
			case btn
			when 'Desasignar'
				controller_name == 'temas'
			when 'Eliminar'
				controller_name == 'temas' and objeto.textos.empty?
			end
		when 'Proyecto'
			objeto.activo.blank? or objeto.activo == false
		when 'Perfil'
			controller_name == 'proyectos'
		when 'Tabla'
			case btn
			when 'Cargar'
				objeto.archivo.present? and objeto.encabezados.empty? and objeto.lineas.empty?
			when 'Descargar'
				objeto.encabezados.any? or objeto.lineas.any?
			end
		when 'Etiqueta'
			case btn
			when '+'
				not objeto.publicaciones.ids.include?(@objeto.id)
			when '-'
				objeto.publicaciones.ids.include?(@objeto.id)
			end
		when 'Reporte'
			false
		when 'Caracterizacion'
			case btn
			when 'Crear Tabla'
				not objeto.tabla?
			when 'Eliminar Tabla'
				objeto.tabla?
			end
		else
			true
		end
	end

	def x_btns(objeto)
		case objeto.class.name
		when 'Carpeta'
			[
				['Desasignar', '/desasigna_carpeta', true],
				['Eliminar', '/elimina_carpeta', true],
				['Sacar', '/sacar_carpeta', true]
			]
		when 'Carga'
			[['Proceso', '/procesa_carga', false]]
		when 'Texto'
			[['Desasignar', '/desasignar', true]]
		when 'Clasificacion'
			[
                ['referencia',     '/clasifica?clasificacion=referencia'    , true],
                ['complementario', '/clasifica?clasificacion=complementario', true],
                ['controversial',  '/clasifica?clasificacion=controversial' , true],
                ['revisar',        '/clasifica?clasificacion=revisar'       , true]
            ]
        when 'Tema'
        	[
#        		['Desasignar', '/desasignar', true],
        		['Eliminar', '/eliminar', true]
        	]
        when 'Proyecto'
        	[['Activo', '/activo', false]]
        when 'Perfil'
        	[['Desvincular', '/desvincular', true]]
        when 'Tabla'
        	[
        		['Cargar', '/cargar_tabla', true],
        		['Descargar', '/descargar_tabla', true]
        	]
        when 'Etiqueta'
        	[
        		['+', '/asignar', true],
        		['-', '/desasignar', true]
        	]
        when 'Reporte'
	    	[['xlsx', '/xlsx', false]]
        when 'Caracterizacion'
	    	[
	    		['Crear Tabla', '/crear_tabla', false],
	    		['Eliminar Tabla', '/eliminar_tabla', false]
	    	]
        else
        	[]
		end		
	end

	def show_link_condition(objeto)
		case objeto.class.name
		when 'Proyecto'
			objeto.id == session[:proyecto_activo]['id']
		else
			true
		end
	end

	## ------------------------------------------------------- FORM & SHOW

	def detail_controller_path(controller)
		if File.exist?("app/views/#{controller}/_detail.html.erb")
			"#{controller}/detail"
		else
			'0p/form/detail'
		end
	end

	# apoyo de filtro_condicional_field? (abajo)
	def get_field_condition(objeto, field)
		case objeto.class.name
		when 'Publicacion'
			objeto.origen == 'ingreso'
		when 'Mensaje'
			field != 'email' or not usuario_signed_in?
		end
	end

	## ------------------------------------------------------- SHOW

	# Método de apoyo usado en get_new_link (abajo)
	def show_title(objeto)
		case objeto.class.name
		when 'Publicacion'
			objeto.title
		when 'Linea'
			objeto.columnas.order(:orden).first.columna
		when 'Imagen'
			objeto.nota
		else
			objeto.send(objeto.class.name.tableize.singularize)
		end
	end

	def show_links(objeto)
		case objeto.class.name
		when 'Publicacion'
			[
				['Editar',     [:edit, objeto], objeto.origen == 'ingreso'],
				['Papelera',   "/publicaciones/estado?publicacion_id=#{objeto.id}&estado=papelera",     (['ingreso', 'duplicado'].include?(objeto.estado) and objeto.origen = 'ingreso')],
				['Eliminar',   "/publicaciones/estado?publicacion_id=#{objeto.id}&estado=eliminado",    ['papelera'].include?(objeto.estado)],
				['Publicar',   "/publicaciones/estado?publicacion_id=#{objeto.id}&estado=publicada",    (['ingreso'].include?(objeto.estado) and objeto.title.present? and objeto.author.present? and objeto.journal.present?)],	
				['Ingreso',    "/publicaciones/estado?publicacion_id=#{objeto.id}&estado=ingreso",      (['publicado', 'papelera'].include?(objeto.estado) and objeto.origen == 'ingreso')],
				['Múltiple',   "/publicaciones/estado?publicacion_id=#{objeto.id}&estado=multiple",     objeto.estado == 'duplicado'],
				['Corrección', "/publicaciones/estado?publicacion_id=#{objeto.id}&estado=correccion",   (objeto.estado == 'publicada' and objeto.origen == 'ingreso' and objeto.textos.empty?)]
			]
		end
	end

end
