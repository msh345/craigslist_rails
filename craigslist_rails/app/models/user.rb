class User < ActiveRecord::Base
  has_many :posts

  #has_secure_password

    def self.authenticate(params)
    user = User.find_by_name(params[:name])
    return user if user && (user.password == params[:password])
    nil # either invalid email or wrong password
    end

end
