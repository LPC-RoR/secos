class LineaInvestigacion < ApplicationRecord

	TABLA_FIELDS = [
		['linea_investigacion', 'normal']
	]

	has_many :li_dis
	has_many :disciplinas, through: :li_dis

	has_many :i_lis
	has_many :investigadores, through: :i_lis

	has_many :p_lis
	has_many :linea_investigaciones, through: :p_lis

	has_many :tf_lis
	has_many :tesis_finalizadas, through: :tf_lis

	has_many :ae_lis
	has_many :articulo_entrevistas, through: :ae_lis
end
