class PostsController < ApplicationController
	before_action :set_post, only:[:show, :edit, :update, :destroy]

  def new
  	@post = Post.new
  end

  def create
  	@post = Post.new(post_params)
  	@post.save
  	redirect_to '/activity'
  end

  def index
  	@posts = Post.all.order("id DESC").page(params[:page]).per(5)
    @posts_new = Post.all.order("id DESC").limit(5)
  end

  def show
  	@post = Post.find(params[:id])
  end

  def edit
  end 

  def update
    @post.title = params[:title]
    @post.body = params[:body]
    @post.save
    redirect_to post_path(@post.id)
  end

  def destroy
  	@post.destroy
  	redirect_to activity_path
  end

  private
  	def set_post
  		@post = Post.find(params[:id])
  	end

  	def post_params
  		params.require(:post).permit(:title, :body, :user_id, :image)
  	end
end
