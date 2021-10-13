class Vinculo < ApplicationRecord

	TIPOS_ACTIVIDAD = [
		'Actividad Prospectiva',
		'Capacitación',
		'Desarrollo de Estudio',
		'Desarrollo de Proyecto',
		'Entrenamiento Científico',
		'Instalación de Científico',
		'Otra'
	]

	TIPOS_INSTITUCION = [
		'Industria',
		'Instituciones Educativas no Universitarias',
		'Instituciones Públicas o Privadas',
		'Otra',
		'Spin Off'
	]

	DISPLAY_FIELDS = [
		['actividad', 'Actividad',                         'string'],
		['tipo_conexion',       'Tipo de Conexión',                               'string'],
		['tipo_actividad',        'Tipo de Actividad',                                'string'],
		['otro_tipo_actividad', 'Otro Tipo de Actividad', 'string'],
		['objetivo_actividad',   'Objetivo de Actividad',  'text'],
		['fecha_inicio',   'Fecha de Inicio',    'datetime'],
		['fecha_termino',   'Fecha de Término',   'datetime'],
		['investigador_encargado',   'Investigador Encargado',   'string'],
		['fondos_pesos',     'Fondos Aportados en Pesos (excluyendo lo aportado por el Centro Milenio)', 'string'],
		['fondos_dolares',   'Fondos Aportados en Dólares',     'string'],
		['costo_vinculo_pesos',   'Costo Total del Vínculo en Pesos', 'string'],
		['costo_vinculo_dolares',   'Costo Total del Vínculo en Dólares',   'string'],
		['nombre_institucion',   'Nombre de la Institución',   'string'],
		['pais_institucion',    'País de la Institución',    'string'],
		['region_institucion',    'Región de Institución',    'string'],
		['ciudad',   'Ciudad',   'string'],
		['tipo_institucion',    'Tipo de Institución',   'string'],
		['otro_tipo_institucion',    'Otro Tipo de Institución',     'string'],
		['sector_economico',      'Sector Económico',   'string'],
		['otro_sector_economico',    'Otro Sector Económico',    'string']
	]

	TABLA_FIELDS = [
		['actividad', 'show'],
		['propietario',  'normal']
	]

	validates_presence_of :actividad, :tipo_conexion, :tipo_actividad, :objetivo_actividad, :fecha_inicio, :investigador_encargado, :fondos_pesos, :nombre_institucion, :pais_institucion, :ciudad, :tipo_institucion, :sector_economico

end
