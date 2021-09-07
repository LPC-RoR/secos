class NivelFormacion < ApplicationRecord
	has_many :fj_nfores
	has_many :formacion_jovenes, through: :fj_nfores
end
