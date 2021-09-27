class ActividadDifusion < ApplicationRecord

	ORGANIZACIONES = [
		'Organizador',
		'Participa'
	]

	TIPOS_EVENTO = [
		'Conferencia',
		'Seminario',
		'Foro',
		'Exhibición',
		'Workshop',
		'Competencia',
		'Concurso',
		'Video Conferencia',
		'Otro',
	]

	DISPLAY_FIELDS = [
		['asociada_concurso_milenio', 'Actividad asociada a concurso Milenio de PME',    'string'],
		['organizacion',              'Organización',                                    'string'],
		['alcance',                   'Alcance',                                         'string'],
		['titulo_evento',             'Título del Evento',                               'string'],
		['tipo_evento',               'Tipo de Evento',                                  'string'],
		['otro_tipo_evento',          'Otro Tipo de Evento',                             'string'],
		['publico_objetivos',         'Público Objetivo',                                'asociation'],
		['fecha',                     'Fecha',                                           'datetime'],
		['pais_institucion',          'País de la Institución',                          'string'],
		['region_ubicacion',          'Región de Ubicación',                             'string'],
		['descripcion_actividad',     'Descripción de Actividad',                        'string'],
		['n_asistentes_estudiantes',  'N° de asistentes que son estudiantes del Centro', 'string'],
		['n_total_asistentes',        'N° total de asistentes',                          'string'],
		['duracion',                  'Duración (días)',                                 'string'],
		['responsable_actividad',     'Responsable de Actividad',                        'string'],
		['investigadores',            'Investigadores del Centro Participantes',         'asociation']
	]

	TABLA_FIELDS = [
		['titulo_evento', 'show'], 
	]

	has_many :ad_pos
	has_many :publico_objetivos, through: :ad_pos

	has_many :ad_is
	has_many :investigadores, through: :ad_is

end
