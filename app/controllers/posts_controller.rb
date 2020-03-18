class PostsController < ApplicationController

  def index
    @posts = Post.includes(:user)

  end

  def new
    @post = Post.new
  end

  def create
    # binding.pry
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
  end


  private
  def post_params
    params.require(:post).permit(:content, :image).merge(user_id: current_user.id)
  end

end
