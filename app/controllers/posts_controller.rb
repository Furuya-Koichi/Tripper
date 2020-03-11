class PostsController < ApplicationController

  def index
    @posts = Post.all

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

  
  private
  def post_params
    params.require(:post).permit(:content, :image)
  end

end
