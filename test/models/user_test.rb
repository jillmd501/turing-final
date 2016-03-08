require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.create(username: "Jill", password: "Password")
  end

  test "#users have the correct attributes" do
    assert @user.username
    assert @user.password_digest
  end
end
