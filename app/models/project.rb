class Project < ActiveRecord::Base
  attr_accessible :name, :owner
  has_many :versions
  
end
