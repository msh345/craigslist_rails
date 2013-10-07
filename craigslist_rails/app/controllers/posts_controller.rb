class PostsController < ApplicationController
  def index
    @category = Category.find(params[:category_id])
    @posts = @category.posts
    # redirect_to category_posts_path
  end

  def show
    @category = Category.find(params[:category_id])
    @post = Post.find(params[:id])
  end

end
