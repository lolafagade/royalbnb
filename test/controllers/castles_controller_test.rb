require 'test_helper'

class CastlesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get castles_show_url
    assert_response :success
  end

end
