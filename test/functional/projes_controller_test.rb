require 'test_helper'

class ProjesControllerTest < ActionController::TestCase
  setup do
    @proje = projes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proje" do
    assert_difference('Proje.count') do
      post :create, proje: { content: @proje.content, title: @proje.title }
    end

    assert_redirected_to proje_path(assigns(:proje))
  end

  test "should show proje" do
    get :show, id: @proje
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proje
    assert_response :success
  end

  test "should update proje" do
    put :update, id: @proje, proje: { content: @proje.content, title: @proje.title }
    assert_redirected_to proje_path(assigns(:proje))
  end

  test "should destroy proje" do
    assert_difference('Proje.count', -1) do
      delete :destroy, id: @proje
    end

    assert_redirected_to projes_path
  end
end
