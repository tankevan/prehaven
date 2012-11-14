class IssuesController < ApplicationController

	def create
	  user ||= User.find(session[:user_id]) if session[:user_id]
	  client = Octokit::Client.new(:login => user.name, :oauth_token => user.token)
	  issue = client.create_issue("tankevan/demo_app", "Test Sucesss 2", "Some text here")
	  Issue.create_new_issue(issue)
	  redirect_to root_url, :notice => "Issue created!"
	end

	def destroy
	  user ||= User.find(session[:user_id]) if session[:user_id]
	  client = Octokit::Client.new(:login => user.name, :oauth_token => user.token)
	  issue = Issue.find(1)
	  client.close_issue("tankevan/demo_app", params[:issue_no])
	  redirect_to get_issues_path(:repo => params[:repo]), :notice => "Issue created!"
	end

end
