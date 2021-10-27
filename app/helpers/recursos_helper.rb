module RecursosHelper
	## ------------------------------------------------------- GENERAL

	def app_setup
		{
			nombre: 'Secos',
			home_link: 'http://www.secos.cl'
		}
	end

	def portada_setup
		{
			size: nil,
			clase: 'mx-auto d-block'
		}
	end

	def tema_home_setup
		{
            size: 'half',
            clase: 'mx-auto d-block',
            titulo_size: 1,
            titulo_color: 'primary',
            detalle_size: 6,
            detalle_color: 'primary'
		}
	end

	def foot_setup
		{
            size: 'quarter',
            clase: 'mx-auto d-block'
		}
	end

	def app_color
		{
			app: 'primary',
			navbar: 'primary',
			help: 'dark',
			data: 'success'
		}
	end

	## ------------------------------------------------------- TABLA | BTNS

	def sortable_fields
		{
			'controller' => ['campo1', 'campo2']
		}
	end

	# En modelo.html.erb define el tipo de tabla con la que se despliegan las tablas
	# <tr class="table-<%=tr_row(objeto)%>">
	# ex 'tr_row'
	def table_class(objeto)
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

	def app_alias_tabla(controller)
		controller
	end

	def app_new_button_conditions(controller)
		if ['linea_investigaciones', 'investigadores', 'pyh_centros', 'aporte_actividades', 'tecnico_administrativos', 'fuente_financiamientos'].include?(controller)
			session[:es_administrador]
		elsif ['mensajes'].include?(controller)
			@tab == 'ingreso'
		elsif ['directorios'].include?(controller)
			session[:es_administrador] and action_name == 'index'
		elsif ['tema_ayudas', 'tutoriales'].include?(controller)
			session[:es_administrador]
		elsif ['archivos', 'documentos'].include?(controller)
			false
		else
			true
		end
	end

	def app_crud_conditions(objeto, btn)
		if ['LineaInvestigacion', 'Investigador', 'PyhCentro', 'AporteActividad', 'TecnicoAdministrativo', 'FuenteFinanciamiento'].include?(objeto.class.name)
			session[:es_administrador]
		elsif ['Aco', 'Publicacion', 'Patente', 'PresentacionCongreso', 'PyhInvestigador', 'ComiteEditorial', 'FormacionJoven', 'TesisFinalizada', 'PasantiaInterno', 'PasantiaExterno', 'RfColaboracion', 'RColaboracion', 'ActividadDifusion', 'ProductoPme', 'ArticuloEntrevista', 'Vinculo'].include?(objeto.class.name)
			(objeto.propietario == current_usuario.email) or session[:es_administrador]
		else
			case objeto.class.name
			when 'Documento'
				session[:es_administrador]
			when 'Archivo'
				session[:es_administrador]
			else
				['TemaAyuda', 'Tutorial', 'Paso'].include?(objeto.class.name) ? (usuario_signed_in? ? session[:es_administrador] : false) : true
			end
		end
	end

	def estados_conditions(objeto)
		false
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

	## ------------------------------------------------------- SHOW

	# Método de apoyo usado en get_new_link (abajo)
	def app_show_title(objeto)
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
			objeto.nombre_publicacion
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
		when 'ActividadDifusion'
			objeto.titulo_evento
		when 'ProductoPme'
			objeto.producto
		when 'AporteActividad'
			objeto.actividad_producto
		when 'ArticuloEntrevista'
			objeto.actividad
		when 'Vinculo'
			objeto.actividad
		when 'TecnicoAdministrativo'
			objeto.nombre
		when 'FuenteFinanciamiento'
			objeto.fondos
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
