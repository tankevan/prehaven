class Version < ActiveRecord::Base
  attr_accessible :description, :name, :owner_id
  has_many :issues
  belongs_to :project
  
end
