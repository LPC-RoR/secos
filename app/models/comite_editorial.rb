class ComiteEditorial < ApplicationRecord

	TABLA_FIELDS = [
		['publicacion', 'normal']
	]

	has_many :ci_is
	has_many :investigadores, through: :ci_is

end
