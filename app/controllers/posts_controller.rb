class PostsController < ApplicationController
  def index
    if params[:search]
      @posts = Post.search(params[:search]).order('created_at DESC')
    else
      @posts = Post.all.order('created_at DESC')
    end
  end

  def new
  end

  def create
  end

  def delete
  end

  def edit
  end
end
