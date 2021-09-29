class RColaboracion < ApplicationRecord

	DISPLAY_FIELDS = [
		['nombre_red',                  'Nombre de la Red',                                                               'string'],
		['objetivo',                    'Objetivo',                                                                       'text'],
		['descripcion',                 'Descripción',                                                                    'text'],
		['institucion_co_participante', 'Institución Co-Participante',                                                    'string'],
		['tipo_productos',              'Tipo de Productos',                                                              'string'],
		['n_productos',                 'N° de Productos',                                                                'string'],
		['investigadores',              'Investigadores del Centro Participantes en la Actividad',                        'asociation'],
		['n_investigadores_milenio',    'N° Investigadores del Centro Milenio Participantes en la Actividad',             'string'],
		['n_postdoc_alumnos_milenio',   'N° Postdoctorados/Estudiantes del Centro Milenio Participantes en la Actividad', 'string'],
		['n_investigadores_externos',   'N° Investigadores Externos Participantes en la Actividad',                       'string'],
		['n_postdoc_alumnos_externos',  'N° Postdoctorados/Estudiantes Externos Participantes en la Actividad',           'string']
	]

	TABLA_FIELDS = [
		['nombre_red', 'show'],
		['propietario',  'normal']
	]

	has_many :rc_is
	has_many :investigadores, through: :rc_is

end
