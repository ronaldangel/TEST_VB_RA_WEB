require 'test_helper'

class BunniesControllerTest < ActionController::TestCase
  setup do
    @bunny = bunnies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bunnies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bunny" do
    assert_difference('Bunny.count') do
      post :create, bunny: { article_title: @bunny.article_title, bunny_video: @bunny.bunny_video }
    end

    assert_redirected_to bunny_path(assigns(:bunny))
  end

  test "should show bunny" do
    get :show, id: @bunny
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bunny
    assert_response :success
  end

  test "should update bunny" do
    patch :update, id: @bunny, bunny: { article_title: @bunny.article_title, bunny_video: @bunny.bunny_video }
    assert_redirected_to bunny_path(assigns(:bunny))
  end

  test "should destroy bunny" do
    assert_difference('Bunny.count', -1) do
      delete :destroy, id: @bunny
    end

    assert_redirected_to bunnies_path
  end
end
