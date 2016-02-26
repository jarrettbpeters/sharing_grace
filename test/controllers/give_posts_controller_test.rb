require 'test_helper'

class GivePostsControllerTest < ActionController::TestCase
  setup do
    @give_post = give_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:give_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create give_post" do
    assert_difference('GivePost.count') do
      post :create, give_post: { category: @give_post.category, condition: @give_post.condition, description: @give_post.description, location: @give_post.location, title: @give_post.title, user_id: @give_post.user_id }
    end

    assert_redirected_to give_post_path(assigns(:give_post))
  end

  test "should show give_post" do
    get :show, id: @give_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @give_post
    assert_response :success
  end

  test "should update give_post" do
    patch :update, id: @give_post, give_post: { category: @give_post.category, condition: @give_post.condition, description: @give_post.description, location: @give_post.location, title: @give_post.title, user_id: @give_post.user_id }
    assert_redirected_to give_post_path(assigns(:give_post))
  end

  test "should destroy give_post" do
    assert_difference('GivePost.count', -1) do
      delete :destroy, id: @give_post
    end

    assert_redirected_to give_posts_path
  end
end
