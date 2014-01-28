class DashboardsController < ApplicationController

	def create
		
	end

	def show
		@text_shout = TextShout.new
		@photo_shout = PhotoShout.new
		@shouts = current_user.shouts
	end
end