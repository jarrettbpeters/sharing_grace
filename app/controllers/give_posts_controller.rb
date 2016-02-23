class GivePostsController < ApplicationController
  before_action :set_give_post, only: [:show, :edit, :update, :destroy]

  # GET /give_posts
  # GET /give_posts.json
  def index
    @give_posts = GivePost.all
  end

  # GET /give_posts/1
  # GET /give_posts/1.json
  def show
  end

  # GET /give_posts/new
  def new
    @give_post = GivePost.new
  end

  # GET /give_posts/1/edit
  def edit
  end

  # POST /give_posts
  # POST /give_posts.json
  def create
    @give_post = GivePost.new(give_post_params)

    respond_to do |format|
      if @give_post.save
        format.html { redirect_to @give_post, notice: 'Give post was successfully created.' }
        format.json { render :show, status: :created, location: @give_post }
      else
        format.html { render :new }
        format.json { render json: @give_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /give_posts/1
  # PATCH/PUT /give_posts/1.json
  def update
    respond_to do |format|
      if @give_post.update(give_post_params)
        format.html { redirect_to @give_post, notice: 'Give post was successfully updated.' }
        format.json { render :show, status: :ok, location: @give_post }
      else
        format.html { render :edit }
        format.json { render json: @give_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /give_posts/1
  # DELETE /give_posts/1.json
  def destroy
    @give_post.destroy
    respond_to do |format|
      format.html { redirect_to give_posts_url, notice: 'Give post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_give_post
      @give_post = GivePost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def give_post_params
      params.require(:give_post).permit(:title, :category, :location, :description, :condition, :user_id)
    end
end
