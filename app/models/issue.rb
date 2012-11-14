class Issue < ActiveRecord::Base
  attr_accessible :body, :issue_no, :repo, :title
  belongs_to :version

  def self.create_new_issue(issue)
  	create! do |model|
  		model.issue_no = issue.number
  	end
  end
end
