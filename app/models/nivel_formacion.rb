class NivelFormacion < ApplicationRecord
	NIVELES_FORMACION = ['Pregrado', 'Magister', 'Doctorado', 'Postdoctorado']

	belongs_to :investigador

	def nivel_formacion
		self.nivel_en_formacion
	end
end
