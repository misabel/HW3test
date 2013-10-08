class User < ActiveRecord::Base

def User::create_user! hsh
    hsh[:session_token] = SecureRandom.base64
    User.create!(hsh)
end
end
