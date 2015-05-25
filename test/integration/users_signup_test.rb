require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest

  test "user sign ups" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, user: { name: "",
                               email: "test@invalid",
                               password: "foox",
                               password_confirmation: "foox"}
    end
    assert_template 'users/new'
  end


end
