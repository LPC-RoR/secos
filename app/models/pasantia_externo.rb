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

	TABLA_FIELDS = [
		['proyecto', 'normal']
	]

end
