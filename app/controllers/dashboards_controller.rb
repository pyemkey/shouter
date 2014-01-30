class DashboardsController < ApplicationController

	def create
		
	end

	def show
		@dashboard = Dashboard.new(current_user)
		# @text_shout = TextShout.new
		# @photo_shout = PhotoShout.new
		# @shouts = current_user.shouts
	end
end