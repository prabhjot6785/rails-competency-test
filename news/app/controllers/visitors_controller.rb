class VisitorsController < ApplicationController
	
	def index
		@categories = Category.all
	end
end
