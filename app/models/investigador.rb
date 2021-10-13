class Investigador < ApplicationRecord

	CATEGORIAS = [
		'Investigador Responsable',
		'Investigador Responsable Suplente',
		'Investigador Adjunto',
		'Investigador Asociado',
		'Investigador Joven',
		'Investigador Senior',
		'Postdoctorante'
	]

	DISPLAY_FIELDS = [
		['tipo_documento',            'Tipo de Documento',                  'string'],
		['rut_pasaporte',             'Rut / Pasaporte',                    'string'],
		['nombres',                   'Nombres',                            'string'],
		['paterno',                   'Apellido Paterno',                   'string'],
		['materno',                   'Apellido Materno',                   'string'],
		['direccion_correspondencia', 'Dirección Correspondencia',          'string'],
		['comuna',                    'Comuna',                             'string'],
		['region',                    'Región Correspondencia',             'string'],
		['fecha_nacimiento',          'Fecha de Nacimiento',                'datetime'],
		['nacionalidad',              'Nacionalidad',                       'string'],
		['genero',                    'Genero',                             'string'],
		['categoria',                 'Categoría',                          'string'],
		['horas_dedicacion',          'Horas Dedicación',                   'string'],
		['profesion',                 'Profesión',                          'string'],
		['nivel_formaciones',         'Grado Académico',                    'asociation'],
		['institucion',               'Institución a la que Pertenece',     'string'],
		['cargo',                     'Cargo Actual',                       'string'],
		['email',                     'E-mail',                             'string'],
		['telefono_1',                'Telefono 1',                         'string'],
		['telefono_2',                'Telefono 2',                         'string'],
		['celular',                   'Celular',                            'string'],
		['linea_investigaciones',     'Lineas de Investigación Vinculadas', 'asociation'],
		['disciplinas',               'Disciplinas Vinculadas',             'asociation'],
		['fuente_financiamiento',     'Fuente de Financiamiento',           'string'],
		['relacion_centro',           'Relación con Centro',                'string'],
		['fecha_inicio',              'Fecha de Inicio',                    'datetime'],
		['fecha_termino',             'Fecha de Término',                   'datetime'],
		['vigencia',                  'Vigencia',                           'string']
	]

	TABLA_FIELDS = [
		['investigador', 'show'],
		['propietario',  'normal']
	]

	validates_presence_of :tipo_documento, :rut_pasaporte, :nombres, :paterno, :direccion_correspondencia, :region, :fecha_nacimiento, :nacionalidad, :genero, :categoria, :horas_dedicacion, :profesion, :institucion, :cargo, :email, :telefono_1, :fuente_financiamiento, :relacion_centro, :fecha_inicio

	has_many :nivel_formaciones, inverse_of: :investigador
	accepts_nested_attributes_for :nivel_formaciones, allow_destroy: true, reject_if: :all_blank

	has_many :i_lis
	has_many :linea_investigaciones, through: :i_lis

	has_many :i_dis
	has_many :disciplinas, through: :i_dis

	has_many :pis
	has_many :publicaciones, through: :pis

	has_many :pc_is
	has_many :presentacion_congresos, through: :pc_is

	has_many :pc_iotros
	has_many :o_presentacion_congresos, through: :pc_iotros, source: :presentacion_congreso

	has_many :ci_is
	has_many :comite_editoriales, through: :ci_is

	has_many :fj_is
	has_many :formacion_jovenes, through: :fj_is

	has_many :rfc_as
	has_many :rfa_colaboraciones, through: :rfc_as, source: 'rf_colaboracion', foreign_key: 'rf_colaboracion_id'

	has_many :rfc_is
	has_many :rfi_colaboraciones, through: :rfc_is, source: 'rf_colaboracion', foreign_key: 'rf_colaboracion_id'

	has_many :rc_is
	has_many :r_colaboraciones, through: :rc_is

	has_many :ad_is
	has_many :actividad_difusiones, through: :ad_is

	has_many :pp_is
	has_many :producto_pmes, through: :pp_is

	has_many :ae_is
	has_many :articulo_entrevistas, through: :ae_is

	validates :email, presence: true
	validates :email, uniqueness: true


	def investigador
		"#{self.nombres} #{self.paterno} #{self.materno}"
	end

	def iotro
		self.investigador
	end

end
