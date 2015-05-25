require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title,            "Vamos a la playa, ohohohoh"
    assert_equal full_title("Help"),    "Help | Vamos a la playa, ohohohoh"
  end
end