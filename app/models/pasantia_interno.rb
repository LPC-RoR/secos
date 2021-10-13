															class PasantiaInterno < ApplicationRecord

	DISPLAY_FIELDS = [
		['estudiante',          'Estudiante',            'string'],
		['institucion',         'Institución',           'string'],
		['pais',                'País',                  'string'],
		['tutor',               'Tutor',                 'string'],
		['proyecto',            'Proyecto',              'string'],
		['descripcion',         'Descripción Proyecto',  'text'],
		['fecha_inicio',        'Fecha de Inicio',       'datetime'],
		['fecha_termino',       'Fecha de Término',      'datetime'],
		['unidad_departamento', 'Unidad o Departamento', 'string']
	]

	TABLA_FIELDS = [
		['proyecto', 'show'],
		['propietario',  'normal']
	]

	validates_presence_of :estudiante, :institucion, :pais, :tutor, :proyecto, :descripcion, :fecha_inicio, :unidad_departamento

end
