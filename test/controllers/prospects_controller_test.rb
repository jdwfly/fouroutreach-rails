require 'test_helper'

class ProspectsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @prospect = prospects(:tom)
    @user = users(:joe)
  end

  test "should get index" do
    get prospects_path
    assert_response :success
  end

  test "should get new" do
    get new_prospect_path
    assert_response :success
  end

  test "should create prospect" do
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

  test "should show prospect" do
    get prospect_url(@prospect)
    assert_response :success
  end

  test "should get edit" do
    get edit_prospect_url(@prospect)
    assert_response :success
  end

  test "should update prospect" do
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

  test "should destroy vendor" do
    assert_difference('Prospect.count', -1) do
      delete prospect_url(@prospect)
    end

    assert_redirected_to prospects_url
  end
end
