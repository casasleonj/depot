require 'test_helper'

class HeadquartersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @headquarter = headquarters(:one)
  end

  test "should get index" do
    get headquarters_url
    assert_response :success
  end

  test "should get new" do
    get new_headquarter_url
    assert_response :success
  end

  test "should create headquarter" do
    assert_difference('Headquarter.count') do
      post headquarters_url, params: { headquarter: { address_id: @headquarter.address_id = 1, name_headquarters: @headquarter.name_headquarters = 'Syh Servicios y outsourcing sas', number_headquarters: @headquarter.number_headquarters = 1 } }
    end

    assert_redirected_to headquarter_url(Headquarter.last)
  end

  test "should show headquarter" do
    get headquarter_url(@headquarter)
    assert_response :success
  end

  test "should get edit" do
    get edit_headquarter_url(@headquarter)
    assert_response :success
  end

  test "should update headquarter" do
    patch headquarter_url(@headquarter), params: { headquarter: { address_id: @headquarter.address_id = 1, name_headquarters: @headquarter.name_headquarters = 'Syh Servicios y outsourcing sas', number_headquarters: @headquarter.number_headquarters = 1 } }
    assert_redirected_to headquarter_url(@headquarter)
  end

  test "should destroy headquarter" do
    assert_difference('Headquarter.count', -1) do
      delete headquarter_url(@headquarter)
    end

    assert_redirected_to headquarters_url
  end
end
