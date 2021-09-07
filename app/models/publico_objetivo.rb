class PublicoObjetivo < ApplicationRecord
	has_many :aco_pos
	has_many :acos, through: :aco_pos

	has_many :ad_pos
	has_many :actividad_difusiones, through: :ad_pos

	has_many :pp_pos
	has_many :producto_pmes, through: :pp_pos

	has_many :ae_pos
	has_many :articulo_entrevistas, through: :ae_pos
end	
