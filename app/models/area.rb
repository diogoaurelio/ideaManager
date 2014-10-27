class Area < ActiveRecord::Base
	has_many :areainterfaces
	has_many :ideas, through: :areainterfaces

	def to_s
		name
	end

end
