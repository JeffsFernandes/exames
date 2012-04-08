require 'test_helper'

class MutationsControllerTest < ActionController::TestCase
  setup do
    @mutation = mutations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mutations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mutation" do
    assert_difference('Mutation.count') do
      post :create, mutation: @mutation.attributes
    end

    assert_redirected_to mutation_path(assigns(:mutation))
  end

  test "should show mutation" do
    get :show, id: @mutation.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mutation.to_param
    assert_response :success
  end

  test "should update mutation" do
    put :update, id: @mutation.to_param, mutation: @mutation.attributes
    assert_redirected_to mutation_path(assigns(:mutation))
  end

  test "should destroy mutation" do
    assert_difference('Mutation.count', -1) do
      delete :destroy, id: @mutation.to_param
    end

    assert_redirected_to mutations_path
  end
end
