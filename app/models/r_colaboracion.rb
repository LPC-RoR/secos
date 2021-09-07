class RColaboracion < ApplicationRecord

	TABLA_FIELDS = [
		['nombre_red', 'normal']
	]

	has_many :rc_is
	has_many :investigadores, through: :rc_is

end
