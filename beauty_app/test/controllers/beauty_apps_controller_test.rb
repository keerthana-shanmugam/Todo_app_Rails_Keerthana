require "test_helper"

class BeautyAppsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get beauty_apps_index_url
    assert_response :success
  end
end
