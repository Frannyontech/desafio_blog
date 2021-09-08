class PostsController < ApplicationController
  http_basic_authenticate_with name: "rubyonrails", password: "rails2021", only: :index
  def create
    @post = Post.create(title: params[:title], image_url: params[:image_url], content: params[:content])
  end


  def index
    @posts = Post.all
  end
end
