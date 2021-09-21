class RfColaboracion < ApplicationRecord

	DISPLAY_FIELDS = [
		['nombre_red',                     'Nombre de la Red',                                           'string'],
		['objetivo',                       'Objetivo',                                                   'text'],
		['descripcion',                    'Descripción',                                                'text'],
		['alcance',                        'Alcance',                                                    'string'],
		['n_investigadores_milenio',       'N° Investigadores del Centro Milenio en la Red',             'string'],
		['n_postdoc_estudiantes_milenio',  'N° Postdoctorados/Estudiantes del Centro Milenio en la Red', 'string'],
		['n_investigadores_externos',      'N° Investigadores Externos en la Red',                       'string'],
		['n_postdoc_estudiantes_externos', 'N° Postdoctorados/Estudiantes Externos en la Red',           'string'],
		['instituciones',                  'Instituciones',                                              'string'],
		['sitio_web',                      'Sitio Web',                                                  'string'],
		['fecha_inicio',                   'Fecha de inicio',                                            'datetime'],
		['fecha_termino',                  'Fecha de Término',                                           'datetime']
	]

	TABLA_FIELDS = [
		['nombre_red', 'show']
	]

	has_many :rfc_is
	has_many :investigadores, through: :rfc_is

	has_many :rfc_as
	has_many :alumnos, through: :rfc_as, source: 'investigador', foreign_key: 'investigador_id'

end
