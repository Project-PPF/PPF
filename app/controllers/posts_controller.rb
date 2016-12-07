class PostsController < ApplicationController
  def new
  	@title = params[:title]
  end

  def create
  	@post = Post.new
  	@post.title = params[:title]
  	@post.body = params[:body]
  	@post.save
  	redirect_to '/posts/new'
  end

  def index
  	@posts = Post.all
  end
end
