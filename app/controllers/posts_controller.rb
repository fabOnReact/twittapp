require 'controller_modules'
require 'classes/enumerator'

class PostsController < ApplicationController
  include Twitter
  def index
    @search = client.search(params[:search], :lang => "en").take(10).collect if params[:search]
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
