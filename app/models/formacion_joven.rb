class FormacionJoven < ApplicationRecord

	FINANCIAMIENTOS = [
		'Adscrito',
		'Beca ICM',
		'Beca financiamiento externo',
		'Mixto (ICM + Externo)'
	]

	DISPLAY_FIELDS = [
		['nivel_formaciones',            'Grado Académico',                 'asociation'],
		['tipo_documento',               'Tipo Documento',                  'string'],
		['rut_pasaporte',                'RUT / Pasaporte',                 'string'],
		['nombres',                      'Nombres',                         'string'],
		['paterno',                      'Apellido Paterno',                'string'],
		['materno',                      'Apellido Materno',                'string'],
		['email',                        'E-mail',                          'string'],
		['disciplinas',                  'Disciplina',                      'asociation'],
		['nacionalidad',                 'Nacionalidad',                    'string'],
		['genero',                       'Género',                          'string'],
		['profesion_titulo_grado',       'Profesión/Título/Grado Actual',   'string'],
		['investigadores',               'Tutor',                           'asociation'],
		['universidad_formacion',        'Universidad de Formación',        'string'],
		['otra_universidad_formacion',   'Otra Universidad de Formación',   'string'],
		['region_universidad_formacion', 'Región Universidad de Formación', 'string'],
		['universidad_origen',           'Universidad de Origen',           'string'],
		['pais_universidad_origen',      'País Universidad de Origen',      'string'],
		['fecha_nacimiento',             'Fecha de Nacimiento',             'datetime'],
		['tipo_financiamiento',          'Tipo de Financiamiento',          'string'],
		['monto',                        'Monto',                           'string'],
		['relacion_centro',              'Relación con el Centro',          'string'],
		['fecha_ingreso_centro',         'Fecha de Ingreso al Centro',      'datetime'],
		['fecha_desvinculacion',         'Fecha de Desvinculación',         'datetime'],
		['estado',                       'Estado',                          'string']
	]

	TABLA_FIELDS = [
		['nombres', 'show'],
		['propietario',  'normal']
	]

	validates_presence_of :tipo_documento, :rut_pasaporte, :nombres, :paterno, :email, :nacionalidad, :genero, :universidad_formacion, :region_universidad_formacion, :universidad_origen, :pais_universidad_origen, :fecha_nacimiento, :tipo_financiamiento, :relacion_centro, :fecha_ingreso_centro

	has_many :nivel_formaciones
	accepts_nested_attributes_for :nivel_formaciones, allow_destroy: true, reject_if: :all_blank

	has_many :fj_dis
	has_many :disciplinas, through: :fj_dis

	has_many :fj_is
	has_many :investigadores, through: :fj_is

	has_many :pc_fjos
	has_many :presentacion_congresos, through: :pc_fjos

	has_many :rfc_fjos
	has_many :rf_colaboraciones, through: :rfc_fjos

	has_many :pp_fjos
	has_many :producto_pmes, through: :pp_fjos

	def nombre
		"#{nombres} #{paterno} #{materno}"
	end

	def formacion_joven
		self.nombre
	end

end
