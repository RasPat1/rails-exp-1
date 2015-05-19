require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  def setup
    @title_suffix = " | Vamos a la playa, ohohohoh"
  end

  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home#{@title_suffix}"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help#{@title_suffix}"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About#{@title_suffix}"
  end

  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "Contact#{@title_suffix}"
  end
end
