require 'test_helper'

class SetLanguageControllerTest < ActionController::TestCase
  test "should get french" do
    get :french
    assert_response :success
  end

  test "should get english" do
    get :english
    assert_response :success
  end

end
