require 'test_helper'

class CommitteeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get committee_index_url
    assert_response :success
  end

end
