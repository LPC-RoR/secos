class Nomina < ApplicationRecord
	TABLA_FIELDS = [
		['email', 'normal'], 
		['tipo',  'normal']
	]

 	FORM_FIELDS = [
		['email', 'entry'],
		['tipo',  'entry']
	]

	validates :email, presence: true
	validates :email, uniqueness: true

end
