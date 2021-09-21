class PasantiaExterno < ApplicationRecord

	TIPOS_PASANTE = [
		'Investigador',
		'Estudiante'
	]

	GRADOS_ACADEMICOS = [
		'Pregrado',
		'Magister',
		'Doctorado',
		'PostDoctorado'
	]

	DISPLAY_FIELDS = [
		['tipo_pasante',           'Tipo de Pasante',                 'string'],
		['nombres',                 'Nombres',                        'string'],
		['paterno',                 'Apellido Paterno',               'string'],
		['materno',                 'Apellido Materno',               'string'],
		['grado_academico',         'Grado Académico',                'string'],
		['pais',                    'País de Procedencia',            'string'],
		['institucion_procedencia', 'Institución de Procedencia',     'string'],
		['institucion_pasantia',    'Institución donde será Pasante', 'string'],
		['region',                  'Región',                         'string'],
		['descripcion_pasantia',    'Descripción de la Pasantía',	  'text'],
		['fecha_inicio',            'Fecha de Inicio',                'datetime'],
		['fecha_termino',           'Fecha de Término',               'datetime']
	]

	TABLA_FIELDS = [
		['proyecto', 'show']
	]

	def nombre
		"#{nombres} #{paterno} #{materno}"
	end

end
