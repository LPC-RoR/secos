class LineaInvestigacion < ApplicationRecord

	DISPLAY_FIELDS = [
		['linea_investigacion',              'Línea de Investigación',                  'string'],
		['objetivo',                         'Objetivo',                                'text'],
		['descripcion',                      'Descripción',                             'text'],
		['conceptos_clave',                  'Conceptos Clave',                         'text'],
		['disciplinas',                      'Disciplina(s)',                           'asociation'],
		['fecha_inicio',                     'Fecha Inicio',                            'datetime'],
		['fecha_termino',                    'Fecha Término',                           'datetime'],
		['validez',                          'Validez',                                 'string']
	]

	TABLA_FIELDS = [
		['linea_investigacion', 'show'],
		['propietario',         'normal']
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
