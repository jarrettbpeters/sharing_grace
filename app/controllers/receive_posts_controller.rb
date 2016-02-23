class ReceivePostsController < ApplicationController
  before_action :set_receive_post, only: [:show, :edit, :update, :destroy]

  # GET /receive_posts
  # GET /receive_posts.json
  def index
    @receive_posts = ReceivePost.all
  end

  # GET /receive_posts/1
  # GET /receive_posts/1.json
  def show
  end

  # GET /receive_posts/new
  def new
    @receive_post = ReceivePost.new
  end

  # GET /receive_posts/1/edit
  def edit
  end

  # POST /receive_posts
  # POST /receive_posts.json
  def create
    @receive_post = ReceivePost.new(receive_post_params)

    respond_to do |format|
      if @receive_post.save
        format.html { redirect_to @receive_post, notice: 'Receive post was successfully created.' }
        format.json { render :show, status: :created, location: @receive_post }
      else
        format.html { render :new }
        format.json { render json: @receive_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /receive_posts/1
  # PATCH/PUT /receive_posts/1.json
  def update
    respond_to do |format|
      if @receive_post.update(receive_post_params)
        format.html { redirect_to @receive_post, notice: 'Receive post was successfully updated.' }
        format.json { render :show, status: :ok, location: @receive_post }
      else
        format.html { render :edit }
        format.json { render json: @receive_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /receive_posts/1
  # DELETE /receive_posts/1.json
  def destroy
    @receive_post.destroy
    respond_to do |format|
      format.html { redirect_to receive_posts_url, notice: 'Receive post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_receive_post
      @receive_post = ReceivePost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def receive_post_params
      params.require(:receive_post).permit(:title, :category, :location, :description, :condition, :user_id)
    end
end
