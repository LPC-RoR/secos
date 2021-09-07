class Disciplina < ApplicationRecord

	TABLA_FIELDS = [
		['disciplina', 'normal']
	]

 	FORM_FIELDS = [
		['disciplina',  'entry']
	]

	has_many :li_dis
	has_many :linea_investigaciones, through: :li_dis

	has_many :i_dis
	has_many :investigadores, through: :i_dis

	has_many :fj_dis
	has_many :formacion_jovenes, through: :fj_dis

end
