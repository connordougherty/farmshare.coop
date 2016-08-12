require 'test_helper'

class StorefrontsControllerTest < ActionController::TestCase
  setup do
    @storefront = storefronts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:storefronts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create storefront" do
    assert_difference('Storefront.count') do
      post :create, storefront: { info: @storefront.info, name: @storefront.name, user_id: @storefront.user_id }
    end

    assert_redirected_to storefront_path(assigns(:storefront))
  end

  test "should show storefront" do
    get :show, id: @storefront
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @storefront
    assert_response :success
  end

  test "should update storefront" do
    patch :update, id: @storefront, storefront: { info: @storefront.info, name: @storefront.name, user_id: @storefront.user_id }
    assert_redirected_to storefront_path(assigns(:storefront))
  end

  test "should destroy storefront" do
    assert_difference('Storefront.count', -1) do
      delete :destroy, id: @storefront
    end

    assert_redirected_to storefronts_path
  end
end
