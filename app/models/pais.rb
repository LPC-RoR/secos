class Pais < ApplicationRecord

	has_many :pat_pais
	has_many :patentes, through: :pat_pais

end
