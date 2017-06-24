require 'test_helper'

class ProspectsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get prospects_index_url
    assert_response :success
  end

end
