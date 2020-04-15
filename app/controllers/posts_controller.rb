class PostsController < ApplicationController

  def index
    @posts = Post.includes(:user).order("created_at DESC")
  end

  def new
    # binding.pry
    @post = Post.new
    @post.images.new
  end

  def create
    Post.create(post_params)
    redirect_to root_path
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to root_path
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
    redirect_to root_path
  end

  def show
    @post = Post.find(params[:id])
    #いいね機能
    @like = Like.new
    #コメント機能
    @comments = @post.comments
    @comment = Comment.new
  end

  def search
    @posts = Post.search(params[:keyword])
  end

  private
  def post_params
    params.require(:post).permit(:name, :content, :country, :travelexpense, images_attributes: [:image_url, :_destroy, :id]).merge(user_id: current_user.id)
  end

end
