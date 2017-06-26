require 'test_helper'

class ProspectsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @prospect = Prospect.create!(name: "Clark Kent")
  end

  test "should get index" do
    get prospects_path
    assert_response :success
  end

  test "should get show" do
    get prospect_path(@prospect)
    assert_response :success
  end

  test "should get new" do
    get new_prospect_path
    assert_response :success
  end

end
