class PagesController < ApplicationController
	before_filter :authorize

	def index
		
	end

	private

	def authorize
	    if current_user
	    	redirect_to dashboards_url
	    end
	end
	
end
