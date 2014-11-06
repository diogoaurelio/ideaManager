class Idea < ActiveRecord::Base
	belongs_to :user
	#validates :user, presence: true
	default_scope -> { order('created_at DESC') }
	has_many :areainterfaces
	has_many :areas, through: :areainterfaces
	has_many :votes, dependent: :destroy
	
	validates :name, :area_list, presence: true
	validates :description, presence: true, length: { minimum: 5}
	validates :name, uniqueness: true

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

	def self.by_votes
		select('ideas.*, coalesce(value,0) as votes').
		joins('left join idea_votes on idea_id=ideas.id').
		order('votes desc')
	end

	def votes
		read_attributes(:votes) || idea_votes.sum(:value)
	end

end
