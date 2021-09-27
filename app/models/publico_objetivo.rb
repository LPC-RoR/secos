class PublicoObjetivo < ApplicationRecord

	PUBLICOS_OBJETIVO = [
		'Otro',
		'Niños y niñas en etapa pre-escolar',
		'Estudiantes de enseñanza básica',
		'Estudiantes de enseñanza media',
		'Estudiantes de educación superior IP o CFT',
		'Estudiantes universitarios de pregrado',
		'Estudiantes de postgrado',
		'Educadoras de párvulos',
		'Profesores de enseñanza básica',
		'Profesores de enseñanza media',
		'Docente de IP y/o CFT',
		'Docentes universitarios',
		'Profesionales del área del centro',
		'Profesionales de otras áreas',
		'Sector privado',
		'Sector público',
		'Público general',
		'Industria',
		'Medios de comunicación',
		'Pesonas que habitan en viviendas que no tienen servicios básicos',
		'Mujeres que han sido víctimas de violencia intrafamiliar y que no tienen ingresos propios',
		'Personas que viven en campamentos o situación de hacinamiento alto o crítico',
		'Niños, niñas o adolecentes que viven en residencias del SENAME',
		'Adultos y personas mayores con discapacidades, dependencia, que viven solos o institucionalizados y que pertenecen al 40% más pobre de la población',
		'Niños, niñas y adolecentes entre 5 y 18 años que no asisten a ningun establecimiento educacional',
		'Personas con consumo problemático de alcohol o drogas',
		'Personas en condición de calle',
		'Personas en lista de espera con garantías de oportunidad y seguridad vencida en programa auge o GES',
		'Personas en hogares expuestos crónicamente a tráfico de drogas, balaceras y violencia',
		'Mayores de 18 años cesantes por 3 meses o más y sin ninguna fuente de ingreso',
		'Familias en que uno o más de sus integrantes no son autovalentes y pertenecen al 40% más pobre de la población',
		'Mayores de 18 años que no estudian y no han completado cuarto medio',
		'Personas que pertenecen a pueblos originarios y pertenecen al 40% más pobre de la población'
	]

	TABLA_FIELDS = [
		['publico_objetivo', 'show']
	]

	has_many :aco_pos
	has_many :acos, through: :aco_pos

	has_many :ad_pos
	has_many :actividad_difusiones, through: :ad_pos

	has_many :pp_pos
	has_many :producto_pmes, through: :pp_pos

	has_many :ae_pos
	has_many :articulo_entrevistas, through: :ae_pos
end	
