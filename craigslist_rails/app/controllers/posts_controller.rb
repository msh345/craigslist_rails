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

  def create
  	@post = current_user.posts.new(title: params[:post][:title], body: params[:post][:body], category_id: params[:post][:category_id])

		if @post.save
			redirect_to @post
		else
			render 'new'
		end
  end

  def destroy
  end



end
