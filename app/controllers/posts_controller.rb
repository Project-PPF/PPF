class PostsController < ApplicationController
  def new
  	@title = params[:title]
  end

  def create
  	@post = Post.new
  	@post.title = params[:title]
  	@post.body = params[:body]
  	@post.save
  	redirect_to post_path(@post.id)
  end

  def index
  	@posts = Post.all
  end

  def show
  	@post = Post.find(params[:id])
  end

end
