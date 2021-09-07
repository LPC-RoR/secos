class TesisFinalizada < ApplicationRecord

	NIVELES_FORMACION = [
		'Magister',
		'Doctorado',
		'Pregrado',
		'PostDoctorado'
	]

	TABLA_FIELDS = [
		['nombre_tesis', 'normal']
	]

	has_many :tf_lis
	has_many :linea_investigaciones, through: :tf_lis

end
