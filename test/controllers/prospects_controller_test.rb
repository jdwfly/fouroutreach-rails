require 'test_helper'

class ProspectsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  def setup
    @prospect = prospects(:tom)
    @prospect_no_access = prospects(:richard)
    @user = users(:joe)
  end

  test "should redirect not signed in users for all actions" do
    get prospects_path
    assert_redirected_to new_user_session_path
    get new_prospect_path
    assert_redirected_to new_user_session_path
    get prospect_url(@prospect)
    assert_redirected_to root_path
    get edit_prospect_url(@prospect)
    assert_redirected_to root_path
  end

  test "should get index for signed in users" do
    sign_in @user
    get prospects_path
    assert_response :success
  end

  test "should get new for signed in users" do
    sign_in @user
    get new_prospect_path
    assert_response :success
  end

  test "should create prospect for signed in users" do
    sign_in @user
    assert_difference('Prospect.count') do
      post prospects_url, params: { prospect: { name: @prospect.name,
                                                address: @prospect.address,
                                                city: @prospect.city,
                                                state: @prospect.state,
                                                zip: @prospect.zip,
                                                phone: @prospect.phone,
                                                email: @prospect.email,
                                                point_of_contact: @prospect.point_of_contact,
                                                interests: @prospect.interests,
                                                comments: @prospect.comments,
                                                date_first_contact: @prospect.date_first_contact,
                                                user_id: @user } }
    end

    assert_redirected_to prospect_url(Prospect.last)
  end

  test "should not show prospect that a user cannot access" do
    sign_in @user
    get prospect_url(@prospect_no_access)
    assert_redirected_to root_path
  end

  test "should show prospect that a user can access" do
    sign_in @user
    get prospect_url(@prospect)
    assert_response :success
  end

  test "should get edit for signed in users" do
    sign_in @user
    get edit_prospect_url(@prospect)
    assert_response :success
  end

  test "should update prospect for signed in users" do
    sign_in @user
    patch prospect_url(@prospect), params: { prospect: { name: @prospect.name,
                                              address: @prospect.address,
                                              city: @prospect.city,
                                              state: @prospect.state,
                                              zip: @prospect.zip,
                                              phone: @prospect.phone,
                                              email: @prospect.email,
                                              point_of_contact: @prospect.point_of_contact,
                                              interests: @prospect.interests,
                                              comments: @prospect.comments,
                                              date_first_contact: @prospect.date_first_contact,
                                              user_id: @user } }
    assert_redirected_to prospect_url(@prospect)
  end

  test "should destroy prospect for signed in users" do
    sign_in @user
    assert_difference('Prospect.count', -1) do
      delete prospect_url(@prospect)
    end

    assert_redirected_to prospects_url
  end
end
