class WelcomeController < ApplicationController
	def index
		@areas = Area.all
		@ideas = Idea.all
	end
end
