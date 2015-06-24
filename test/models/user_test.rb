require 'test_helper'

class UserTest < ActiveSupport::TestCase


  test "can't save an empty user." do
  user = User.new
  refute user.save
  end

  test "user emails must be unique." do
    tyler1 = User.new(email: "tyler@tyler.com", password: "tyler")
    tyler2 = User.new(email: "tyler@tyler.com", password: "wordup")
    assert tyler1.save
    refute tyler2.save, "Tried to save user with duplicate email."
  end

  test "user input is an email address." do
    tyler1 = User.new(email: "tylerjones", password: "tylerjones")
    tyler2 = users(:tylerjones)
    refute tyler1.save, "not an email address."
    assert tyler2.save
  end



end
