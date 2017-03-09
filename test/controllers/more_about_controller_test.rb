require 'test_helper'

class MoreAboutControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get more_about_index_url
    assert_response :success
  end

end
