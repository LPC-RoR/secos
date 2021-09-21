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

	def display_item_app(item, tipo_item)
		case item
		when 'Temas'
			session[:hay_proyecto] and Proyecto.find(session[:proyecto_activo]['id']).carpetas_personalizadas.any?
		else
			true
		end
	end

	## ------------------------------------------------------- TABLA | BTNS

	def cristiano(field)

		if ['nombre_espaniol'].include?(field)
			'Nombre (Español)'
		elsif ['linea_investigacion', 'Linea investigacion', 'linea_investigaciones'].include?(field)
			'Línea Investigación'
		elsif ['datos_centros'].include?(field)
			'Datos Centro'
		elsif ['investigadores'].include?(field)
			'Investigador'
		elsif ['titulo_actividad'].include?(field)
			'Título Actividad'
		elsif ['Aco', 'acos'].include?(field)
			'Actividad Científica Organizada'
		elsif ['Publicacion'].include?(field)
			'Publicación'
		elsif ['Titulo, titulo'].include?(field)
			'Título'
		elsif ['Presentacion congreso'].include?(field)
			'Presentación Congreso'
		elsif ['Nombre presentacion'].include?(field)
			'Nombre Presdentación'
		elsif ['Pyh investigador', 'pyh_investigadores'].include?(field)
			'Premios y Honores Investigador'
		elsif ['Pyh centro', 'pyh_centro'].include?(field)
			'Premios y Honores Centro'
		elsif ['Comite editorial'].include?(field)
			'Comité Editorial'
		elsif ['Formacion joven'].include?(field)
			'Formación de Jóvenes'
		elsif ['Tesis finalizada'].include?(field)
			'Tesis Finalizada'
		elsif ['Nombre tesis'].include?(field)
			'Nombre Tesis'
		elsif ['Pasantia interno', 'pasantia_internos'].include?(field)
			'Pasantía Interno'
		elsif ['Pasantia externo', 'pasantia_externos'].include?(field)
			'Pasantía Externo'
		elsif ['Rf colaboracion', 'rf_colaboraciones'].include?(field)
			'Red Formal de Colaboración'
		elsif ['Nombre red'].include?(field)
			'Nombre Red'
		elsif ['R colaboracion', 'r_colaboraciones'].include?(field)
			'Red de Colaboración'
		elsif ['Actividad difusion', 'actividad_difusiones'].include?(field)
			'Actividad de Difusión'
		elsif ['Titulo evento'].include?(field)
			'Título Evento'
		elsif ['Producto pme', 'producto_pmes'].include?(field)
			'Producto de PME'
		elsif ['Aporte actividad', 'aporte_actividades'].include?(field)
			'Fondos Actividad de Difusión'
		elsif ['Articulo entrevista', 'articulo_entrevistas'].include?(field)
			'Artículo o Entrevista'
		elsif ['Vinculo', 'vinculos'].include?(field)
			'Vínculo con otro Sector'
		elsif ['Tecnico administrativo', 'tecnico_administrativos'].include?(field)
			'Técnico o Administrativo'
		elsif ['Fuente financiamiento', 'fuente_financiamientos'].include?(field)
			'Fuente de Financiamiento'
		elsif ['administradores'].include?(field)
			'Administrador'
		elsif ['Nomina' 'nominas'].include?(field)
			'Nómina'
		else
			field
		end

	end

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
			objeto.titulo
		when 'Aco'
			objeto.titulo_evento
		when 'Patente'
			objeto.titulo
		when 'PresentacionCongreso'
			objeto.nombre_presentacion
		when 'PyhInvestigador'
			objeto.premio
		when 'PyhCentro'
			objeto.premio
		when 'ComiteEditorial'
			objeto.publicacion
		when 'FormacionJoven'
			objeto.nombre
		when 'TesisFinalizada'
			objeto.nombre_tesis
		when 'PasantiaInterno'
			objeto.estudiante
		when 'PasantiaExterno'
			objeto.nombre
		when 'RfColaboracion'
			objeto.nombre_red
		when 'RColaboracion'
			objeto.nombre_red
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
