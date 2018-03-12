require 'test_helper'

class ContactbooksControllerTest < ActionController::TestCase
  setup do
    @contactbook = contactbooks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contactbooks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contactbook" do
    assert_difference('Contactbook.count') do
      post :create, contactbook: { address: @contactbook.address, city: @contactbook.city, email: @contactbook.email, name: @contactbook.name, phone: @contactbook.phone }
    end

    assert_redirected_to contactbook_path(assigns(:contactbook))
  end

  test "should show contactbook" do
    get :show, id: @contactbook
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contactbook
    assert_response :success
  end

  test "should update contactbook" do
    patch :update, id: @contactbook, contactbook: { address: @contactbook.address, city: @contactbook.city, email: @contactbook.email, name: @contactbook.name, phone: @contactbook.phone }
    assert_redirected_to contactbook_path(assigns(:contactbook))
  end

  test "should destroy contactbook" do
    assert_difference('Contactbook.count', -1) do
      delete :destroy, id: @contactbook
    end

    assert_redirected_to contactbooks_path
  end
end
