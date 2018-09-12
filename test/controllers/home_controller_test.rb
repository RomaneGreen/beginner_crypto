require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get about pg" do
    get home_about_url
    assert_response :success
  end
  test "should get index" do
    get home_index_url
    assert_response :success
  end
  test "should get lookup pg" do
    get home_lookup_url
    assert_response :success
  end

end
