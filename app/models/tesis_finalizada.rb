class TesisFinalizada < ApplicationRecord

	NIVELES_FORMACION = [
		'Magister',
		'Doctorado',
		'Pregrado',
		'PostDoctorado'
	]

	DISPLAY_FIELDS = [
		['estudiante', 'Estudiante',                         'string'],
		['nivel_formacion',       'Nivel de Formación',                               'string'],
		['nombre_tesis',        'Nombre de Tesis',                                'string'],
		['fecha_aprobacion', 'Fecha Aprobación Tesis', 'datetime']
	]

	TABLA_FIELDS = [
		['nombre_tesis', 'show']
	]

	has_many :tf_lis
	has_many :linea_investigaciones, through: :tf_lis

end
