class AporteActividad < ApplicationRecord

	TIPOS_COLABORACIONES = [
		'Auspicio',
		'Patrocinio',
		'Intercambio'
	]

	DISPLAY_FIELDS = [
		['tipo', 'Tipo', 'string'],
		['actividad_producto',          'Actividad o Producto',          'string'],
		['colaborador',     'Colaborador',     'string'],
		['tipo_colaboracion',        'Tipo Colaboración',         'string'],
		['monto',       'Monto',        'string']
	]

	TABLA_FIELDS = [
		['actividad_producto', 'show'], 
		['propietario',  'normal']
	]

	validates_presence_of :tipo, :actividad_producto, :colaborador, :tipo_colaboracion, :monto

	end
