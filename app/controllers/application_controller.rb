class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  before_action :give_post_categories, :receive_post_categories

  def give_post_categories
	  @give_post_categories = GivePost.pluck(:category).sort.uniq!
	  @give_post_categories ||= GivePost.pluck(:category).sort
	end

  def receive_post_categories
    @receive_post_categories = ReceivePost.pluck(:category).sort.uniq!
    @receive_post_categories ||= ReceivePost.pluck(:category).sort
  end

  @giveposts = GivePost.all
  @receiveposts = ReceivePost.all
end
