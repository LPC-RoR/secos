class RfColaboracion < ApplicationRecord

	DISPLAY_FIELDS = [
		['nombre_red',                     'Nombre de la Red',                                             'string'],
		['objetivo',                       'Objetivo',                                                     'text'],
		['descripcion',                    'Descripción',                                                  'text'],
		['alcance',                        'Alcance',                                                      'string'],
		['n_investigadores_milenio',       'N° Investigadores del Centro Milenio en la Red',               'string'],
		['n_postdoc_estudiantes_milenio',  'N° Postdoctorados/Estudiantes del Centro Milenio en la Red',   'string'],
		['n_investigadores_externos',      'N° Investigadores Externos en la Red',                         'string'],
		['n_postdoc_estudiantes_externos', 'N° Postdoctorados/Estudiantes Externos en la Red',             'string'],
		['instituciones',                  'Instituciones',                                                'string'],
		['sitio_web',                      'Sitio Web',                                                    'string'],
		['fecha_inicio',                   'Fecha de inicio',                                              'datetime'],
		['fecha_termino',                  'Fecha de Término',                                             'datetime'],
		['investigadores',                 'Investigadores Asociados del Centro que Participan en la Red', 'asociation'],
		['formacion_jovenes',              'Estudiantes del Centro que Participan en la Red',              'asociation']
	]

	TABLA_FIELDS = [
		['nombre_red', 'show'],
		['propietario',  'normal']
	]

	has_many :rfc_is
	has_many :investigadores, through: :rfc_is

	has_many :rfc_as
	has_many :alumnos, through: :rfc_as, source: 'investigador', foreign_key: 'investigador_id'

	has_many :rfc_fjos
	has_many :formacion_jovenes, through: :rfc_fjos

end
