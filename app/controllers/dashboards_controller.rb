class DashboardsController < ApplicationController

	def create
		
	end

	def show
		@shout = Shout.new
		@shouts = current_user.shouts
	end
end