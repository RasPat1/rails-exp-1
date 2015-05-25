require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest

  test "invalid user sign" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, user: { name: "",
                               email: "test@invalid",
                               password: "foox",
                               password_confirmation: "foox"}
    end
    assert_template 'users/new'
  end

  test "valid user sign up" do
    get signup_path
    assert_difference 'User.count', 1 do
      post_via_redirect users_path, user: { name: "Slumdog MM",
                               email: "latika@shaadi.com",
                               password: "Amitabh11",
                               password_confirmation: "Amitabh11"}
    end
    assert_template 'users/show'
  end

end
