require 'test_helper'

class SheltersControllerTest < ActionController::TestCase
  setup do
    @shelter = shelters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shelters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shelter" do
    assert_difference('Shelter.count') do
      post :create, shelter: { address_1: @shelter.address_1, address_2: @shelter.address_2, address_3: @shelter.address_3, city: @shelter.city, family_size: @shelter.family_size, first_name: @shelter.first_name, last_name: @shelter.last_name, shelter_location: @shelter.shelter_location, state: @shelter.state, telephone: @shelter.telephone, zip_plus: @shelter.zip_plus, zipcode: @shelter.zipcode }
    end

    assert_redirected_to shelter_path(assigns(:shelter))
  end

  test "should show shelter" do
    get :show, id: @shelter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shelter
    assert_response :success
  end

  test "should update shelter" do
    put :update, id: @shelter, shelter: { address_1: @shelter.address_1, address_2: @shelter.address_2, address_3: @shelter.address_3, city: @shelter.city, family_size: @shelter.family_size, first_name: @shelter.first_name, last_name: @shelter.last_name, shelter_location: @shelter.shelter_location, state: @shelter.state, telephone: @shelter.telephone, zip_plus: @shelter.zip_plus, zipcode: @shelter.zipcode }
    assert_redirected_to shelter_path(assigns(:shelter))
  end

  test "should destroy shelter" do
    assert_difference('Shelter.count', -1) do
      delete :destroy, id: @shelter
    end

    assert_redirected_to shelters_path
  end
end
