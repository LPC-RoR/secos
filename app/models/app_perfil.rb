class AppPerfil < ApplicationRecord

	TABLA_FIELDS = [
		['email', 'normal'], 
	]


	belongs_to :app_administrador, optional: true

end
