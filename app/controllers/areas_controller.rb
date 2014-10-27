class AreasController < ApplicationController
	before_action :authenticate_user!
	def show
  		@area = Area.find(params[:id])
    	@idea_months = @area.ideas.group_by { |t| t.created_at.beginning_of_month }
	end

end
