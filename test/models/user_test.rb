require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "user must have all credentials submitted" do
    user = User.new
    refute user.save, "Tried to register a user without either a
                      username, password, email, or name"
  end

end
