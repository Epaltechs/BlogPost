class PostsController < ApplicationController
  before_action :authenticate
  
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to posts_path
    else
    end
  end

  private

  def post_params
    params.require(:post).permit(:title)
  end
end