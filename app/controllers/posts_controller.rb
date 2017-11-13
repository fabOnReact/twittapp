require 'controller_modules'

class PostsController < ApplicationController
  include Twitter
  def index
    @search = client.search(params[:search], :lang => "en").take(10).collect if params[:search].present?
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
