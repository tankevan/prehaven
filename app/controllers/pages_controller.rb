class PagesController < ApplicationController

	def index
		@users = Octokit.following("tankevan")
	end

	def new_issue
		client = Octokit::Client.new(:login => "tankevan", :password => "vkjuj2zy")
		client.create_issue("tankevan/demo_app", "Test Sucesss", "Some text here")
	end

end
