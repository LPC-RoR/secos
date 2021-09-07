class GradoAcademico < ApplicationRecord

	TABLA_FIELDS = [
		['grado_academico', 'normal']
	]

 	FORM_FIELDS = [
		['grado_academico',  'entry']
	]


	has_many :i_gas
	has_many :investigadores, through: :i_gas
end
