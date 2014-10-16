class Area < ActiveRecord::Base
	has_many :areainterfaces
	has_many :ideas, through: :areainterfaces
end
