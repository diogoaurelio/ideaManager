class Idea < ActiveRecord::Base
	has_many :areainterfaces
	has_many :areas, through: :areainterfaces
	validates :name, :description, :area_list, presence: true

	def area_list=(areas_string)
	  area_names = areas_string.split(",").collect{|s| s.strip.downcase}.uniq
  	  new_or_found_areas = area_names.collect { |name| Area.find_or_create_by(name: name) }
  	  self.areas = new_or_found_areas
	end

	def area_list
		self.areas.collect do |area|
			area.name
		end.join(", ")
	end

end
