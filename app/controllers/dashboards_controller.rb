class DashboardsController < ApplicationController

	def index
		if params[:repo]
		  @repo = params[:repo]
		  client = Octokit::Client.new(:login => current_user.name, :oauth_token => current_user.token)
		  client.create_repository(@repo, {})
		  if client.create_repo(@repo)
		  	client.create_repo(@repo)
		  	@issues = Octokit.list_issues("tankevan/" + params[:repo])
		  else 
		    @issues = Octokit.list_issues("tankevan/" + params[:repo]) 
		  end
		end
	end

end
