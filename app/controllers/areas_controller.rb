class AreasController < ApplicationController
	before_action :authenticate_user!
	def show
  		@area = Area.find(params[:id])
	end

end
