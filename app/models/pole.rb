class Pole < ActiveRecord::Base
	has_many :magnet_poles
 	has_many :magnets, through: :magnet_poles
end
