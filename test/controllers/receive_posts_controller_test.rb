require 'test_helper'

class ReceivePostsControllerTest < ActionController::TestCase
  setup do
    @receive_post = receive_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:receive_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create receive_post" do
    assert_difference('ReceivePost.count') do
      post :create, receive_post: { category: @receive_post.category, condition: @receive_post.condition, description: @receive_post.description, location: @receive_post.location, title: @receive_post.title, user_id: @receive_post.user_id }
    end

    assert_redirected_to receive_post_path(assigns(:receive_post))
  end

  test "should show receive_post" do
    get :show, id: @receive_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @receive_post
    assert_response :success
  end

  test "should update receive_post" do
    patch :update, id: @receive_post, receive_post: { category: @receive_post.category, condition: @receive_post.condition, description: @receive_post.description, location: @receive_post.location, title: @receive_post.title, user_id: @receive_post.user_id }
    assert_redirected_to receive_post_path(assigns(:receive_post))
  end

  test "should destroy receive_post" do
    assert_difference('ReceivePost.count', -1) do
      delete :destroy, id: @receive_post
    end

    assert_redirected_to receive_posts_path
  end
end
