module Sidebar
	extend ActiveSupport::Concern

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
				[2, 'item', 'Tesis Finalizadas'],
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
		when 'Administración'
			[
				[1, 'item', 'Administradores'],
				[1, 'item', 'Nómina'],
				[1, 'item', 'Perfiles'],
				[1, 'item', 'Menús laterales'],
				[1, 'list', 'Archivos'],
				[2, 'item', 'Datos Centro'],
				[2, 'item', 'Disciplinas'],
				[2, 'item', 'Grados Académicos'],
				[2, 'item', 'Público Objetivo'],
			]
		end
	end

	def hash_tablas(list_name)
		case list_name
		when 'Ingreso Datos Anuales'
		{
			'Datos Centro'                                      => 'datos_centros',
			'Líneas de Investigación'                           => 'linea_investigaciones',
			'Investigadores Centro'                             => 'investigadores',
			'Actividades Científicas Organizadas'               => 'acos',
			'Publicaciones'                                     => 'publicaciones',
			'Patentes'                                          => 'patentes',
			'Presentaciones Congresos'                          => 'presentacion_congresos',
			'P. y H. Investigadores'                            => 'pyh_investigadores',
			'P. y H. Centro'                                    => 'pyh_centros',
			'Comités Editoriales'                               => 'comite_editoriales',
			'Formación de jóvenes'                              => 'formacion_jovenes',
			'Tesis Finalizadas'                                 => 'tesis_finalizadas',
			'Internos'                                          => 'pasantia_internos',
			'Externos'                                          => 'pasantia_externos',
			'Redes Formales de Colaboración'                    => 'rf_colaboraciones',
			'Redes de Colaboración'                             => 'r_colaboraciones',
			'Actividades de Difusión'                           => 'actividad_difusiones',
			'Producto de PME (concurso milenio)'                => 'producto_pmes',
			'Fondos Actividades de Difusión (concurso milenio)' => 'aporte_actividades',
			'Artículos y Entrevistas en Medios de Comunicación' => 'articulo_entrevistas',
			'Vínculos con Otros Sectores'                       => 'vinculos',
			'Personal Técnico y Administrativo'                 => 'tecnico_administrativos',
			'Fuentes de Financiamiento'                         => 'fuente_financiamientos'
		}
		when 'Administración'
			{
				'Administradores'   => 'administradores',
				'Nómina'            => 'nominas',
				'Perfiles'          => 'perfiles',
				'Menús laterales'   => 'sb_listas',
				'Datos Centro'      => 'datos_centros',
				'Disciplinas'       => 'disciplinas',
				'Grados Académicos' => 'grado_academicos',
				'Público Objetivo'  => 'publico_objetivos'
			}
		end
	end

	def set_tabla(sidebar, tabla)
		case sidebar
		when 'Ingreso Datos Anuales'
			case tabla
			when 'datos_centros'
				['show']
			else
				['list', true]
			end
		when 'Administración'
			['list', true]
		end
	end

	# SIDEBAR

	def get_lista(nombre)
		lista = SbLista.find_by(lista: nombre)
	end

	def get_elementos(lista)
		lista.blank? ? nil : lista.sb_elementos.order(:orden)
	end

	def first_elemento(elementos)
		unless elementos.blank?
			lista_item = elementos.where(tipo: 'item')
			(lista_item.blank? ? nil : lista_item.order(:orden).first)
		else
			nil
		end
	end

	def get_t(elementos, param_t)
		if param_t.blank?
			first_elemento(elementos).blank? ? nil : first_elemento(elementos).elemento
		else
			param_t
		end
	end

	def get_controller(elementos, param_t)
		if param_t.blank?
			first_elemento(elementos).blank? ? nil : first_elemento(elementos).controlador
		else
			elementos.find_by(elemento: param_t).controlador
		end
	end

	def get_display(elementos, param_t)
		if param_t.blank?
			first_elemento(elementos).blank? ? nil : first_elemento(elementos).despliegue
		else
			elementos.find_by(elemento: param_t).despliegue
		end
	end

	def carga_sidebar(nombre, param_t)
	    @sb_name = nombre

	    lista = get_lista(nombre)
	    @tipo_lista = (lista.lista == 'Ayuda' ? 'ayuda' : 'item')

    	@sb_link = (lista.blank? ? nil : lista.link)
	    @sb_elementos = get_elementos(lista)

	    unless ['new', 'edit'].include?(action_name)
	    	@t = get_t(@sb_elementos, param_t)
	    	@controlador = get_controller(@sb_elementos, @t)
	    	@despliegue = get_display(@sb_elementos, @t)

		    if @despliegue == 'show'
	    		@objeto = @controlador.classify.constantize.first
		    elsif @despliegue == 'ayuda'
			    @objeto = HlpTutorial.find_by(clave: @controlador)
			    @coleccion = {}
			    @coleccion['hlp_pasos'] = @objeto.hlp_pasos.order(:orden) unless @objeto.blank?
		    elsif @despliegue == 'list'
		    	puts 'ENTROOOOO'
		    	@coleccion = {}

				if @controlador.classify.constantize.all.count > 25
					@coleccion[@controlador] = @controlador.classify.constantize.all.page(params[:page])
					@paginate = true
				else
					@coleccion[@controlador] = @controlador.classify.constantize.all
					@paginate = false
				end
		    end
		end
	end

	def nombre_sidebar(controller)
		if ['linea_investigaciones',
			'investigadores',
			'acos',
			'publicaciones',
			'patentes',
			'presentacion_congresos',
			'pyh_investigadores',
			'pyh_centros',
			'comite_editoriales',
			'formacion_jovenes',
			'tesis_finalizadas',
			'pasantia_internos',
			'pasantia_externos',
			'rf_colaboraciones',
			'r_colaboraciones',
			'actividad_difusiones',
			'producto_pmes',
			'aporte_actividades',
			'articulo_entrevistas',
			'vinculos',
			'tecnico_administrativos',
			'fuente_financiamientos'].include?(controller)
			'Ingreso Datos Anuales'
		else
			'Administración'
		end
	end
end
