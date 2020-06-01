class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
<<<<<<< HEAD
    @post = Post.new(params.require(:post).permit(:title, :description))
    @post.save
    redirect_to post_path(@post)
end

	def update
    @post = Post.find(params[:id])
    @post.update(params.require(:post).permit(:title))
    redirect_to post_path(@post)
=======
  @post = Post.new(post_params(:title, :description))
  @post.save
  redirect_to post_path(@post)
  end
 
def update
  @post = Post.find(params[:id])
  @post.update(post_params(:title))
  redirect_to post_path(@post)
end
 
private
 
 
# We pass the permitted fields in as *args;
# this keeps `post_params` pretty dry while
# still allowing slightly different behavior
# depending on the controller action. This
# should come after the other methods
 
def post_params(*args)
  params.require(:post).permit(*args)
>>>>>>> 8a504e8bf4aa4d19b6ffa362c161fc9828ec5d9c
end

	def edit
	  @post = Post.find(params[:id])
	end
end
