class User < ActiveRecord::Base
  
  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |u|
      u.name = auth.info.name
      u.uid = auth.uid
      u.oauth_token = auth.credentials.token
      u.provider = auth.provider
      u.oauth_expires_at = Time.at(auth.credentials.expires_at)
      u.save!
    end
  end

end
