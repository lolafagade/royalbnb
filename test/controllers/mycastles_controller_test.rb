require 'test_helper'

class MycastlesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get mycastles_new_url
    assert_response :success
  end

end
