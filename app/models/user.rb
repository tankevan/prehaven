class User < ActiveRecord::Base
  attr_accessible :name, :provider, :uid, :token

  def self.create_with_omniauth(auth)
	create! do |user|
   	  user.provider = auth["provider"]
	  user.uid = auth["uid"]
	  user.name = auth["extra"]["raw_info"]["login"]
	  user.token = auth["credentials"]["token"]
	end
  end
end
