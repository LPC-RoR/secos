class Investigador < ApplicationRecord

	TABLA_FIELDS = [
		['nombres', 'normal'], 
		['paterno', 'normal'],
		['materno', 'normal']
	]

	validates :administrador, :email, presence: true
	validates :administrador, :email, uniqueness: true

end
