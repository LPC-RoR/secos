class NivelFormacion < ApplicationRecord
	NIVELES_FORMACION = ['Pregrado', 'Magister', 'Doctorado', 'Postdoctorado']

	belongs_to :investigador, optional: true
	belongs_to :formacion_joven, optional: true

	def nivel_formacion
		self.nivel_en_formacion
	end
end
