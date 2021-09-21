class DatosCentro < ApplicationRecord

	DISPLAY_FIELDS = [
		['nombre_espaniol',                  'Nombre Español del Centro',               'string'],
		['nombre_ingles',                    'Nombre Inglés del Centro',                'string'],
		['descripcion',                      'Descripción del Centro',                  'text'],
		['acronimo',                         'Acrónimo',                                'string'],
		['tipo_centro',                      'Tipo de Centro',                          'string'],
		['ambito',                           'Ámbito',                                  'string'],
		['estado',                           'Estado',                                  'string'],
		['doc_aprobatorio',                  'Documento Decreto Aprobatorio',           'file'],
		['doc_extension',                    'Documento Decreto Aprobatorio Extensión', 'file'],
		['',                                 'Datos de Etapa(s)',                       'title'],
		['etapa',                            'Etapa',                                   'string'],
		['codigo_proyecto',                  'Código Proyecto',                         'string'],
		['decreto_aprobatorio',              'Decreto Aprobatorio',                     'string'],
		['fecha_decreto_aprobatorio',        'Fecha Decreto Aprobatorio',               'datetime'],
		['fecha_inicio',                     'Fecha Inicio Centro',                     'datetime'],
		['fecha_termino',                    'Fecha Término Centro',                    'datetime'],
		['fecha_termino_extension',          'Fecha Término Extensión',                 'datetime'],
		['personalidad_juridica',            'Personalidad Jurídica',                   'string'],
		['direccion',                        'Dirección',                               'string'],
		['telefono',                         'Teléfono',                                'string'],
		['fax',                              'Fax',                                     'string'],
		['sitio_web',                        'Sitio Web',                               'string'],
		['',                                 'Institución(es) Albergante(s)',           'title'],
		['institucion_albergante',           'Institución Albergante',                  'string'],
		['nombre_autoridad',                 'Nombre de Autoridad',                     'string'],
		['',                                 'Investigador Responsable',                'title'],
		['nombres_investigador_responsable', 'Nombres',                                 'string'],
		['paterno_investigador_responsable', 'Apellido Paterno',                        'string'],
		['materno_investigador_responsable', 'Apellido Materno',                        'string'],
		['',                                 'Datos Encargado Administrativo',          'title'],
		['admin_nombre',                     'Nombre Encargado Administrativo',         'string'],
		['admin_telefono',                   'Teléfono Encargado Administrativo',       'string'],
		['admin_email',                      'E-mail Encargado Administrativo',         'string'],
		['admin_ejecutivo_rendiciones',      'Ejecutivo de Rendiciones',                'string'],
		['',                                 'Datos Encargado Científico',              'title'],
		['cientif_nombre',                   'Nombre Encargado Científico',             'string'],
		['cientif_email',                    'E-mail Encargado Científico',             'string'],
		['',                                 'Datos Encargado PME y Redes',             'title'],
		['pme_red_nombre',                   'Nombre Encargado PME y Redes',            'string'],
		['pme_red_email',                    'E-mail Encargado PME y Redes',            'string']
	]

	TABLA_FIELDS = [
		['nombre_espaniol', 'normal']
	]

	mount_uploader :doc_aprobatorio, ArchivoUploader
	mount_uploader :doc_extension, ArchivoUploader

end
