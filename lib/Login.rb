require_relative 'peep'
require_relative 'user'

class Login
  def self.user_pass_ok?(username, password)
    user = User.first(:user => username)
    !!(user && user[:password] == password)
  end

  def self.user_exists?(username)
    !!User.first(:user => username)
  end
end
