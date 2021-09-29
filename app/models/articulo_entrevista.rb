class ArticuloEntrevista < ApplicationRecord

	ACTIVIDADES = [
		'Artículo',
		'Entrevista'
	]

	TIPOS_MEDIO = [
		'Periódico',
		'Revista',
		'Boletín',
		'Sitio Web',
		'Radio',
		'Televisión'
	]

	ALCANCES = [
		'Nacional',
		'Internacional',
		'Regional',
		'Local'
	]

	DISPLAY_FIELDS = [
		['tema',                  'Tema',                                    'string'],
		['actividad',             'Actividad',                               'string'],
		['descripcion',           'Descripción Actividad',                   'text'],
		['tipo_medio',            'Tipo Medio',                              'string'],
		['nombre_medio',          'Nombre del Medio',                        'string'],
		['seccion',               'Sección',                                 'string'],
		['fecha_publicacion',     'Fecha Publicación',                       'string'],
		['alcance',               'Alcance',                                 'string'],
		['link',                  'Link a Articulo o Entrevista',            'string'],
		['publico_objetivos',     'Público Objetivo',                        'asociation'],
		['linea_investigaciones', 'Líneas de Investigación',                 'asociation'],
		['investigadores',        'Investigadores del Centro Entrevistados', 'asociation'],
		['adjunto',               'Adjunto de Artículo o Entrevista',        'file']
	]

	TABLA_FIELDS = [
		['actividad', 'show'],
		['propietario',  'normal']
	]

	has_many :ae_is
	has_many :investigadores, through: :ae_is

	has_many :ae_lis
	has_many :linea_investigaciones, through: :ae_lis

	has_many :ae_pos
	has_many :publico_objetivos, through: :ae_pos

	mount_uploader :adjunto, ArchivoUploader
end
