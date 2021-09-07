class RfColaboracion < ApplicationRecord

	TABLA_FIELDS = [
		['nombre_red', 'normal']
	]

	has_many :rfc_is
	has_many :investigadores, through: :rfc_is

	has_many :rfc_as
	has_many :alumnos, through: :rfc_as, class_name: 'Investigador'

end
