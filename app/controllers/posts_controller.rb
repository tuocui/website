class PostsController < ApplicationController

  force_ssl :only => [:new, :create], if: :ssl_configured?
  before_action :is_tony?

  def new
    set_active("new_post")
    @post = Post.new
  end

  def create
    @post = Post.new
    @post.title = params[:post][:title]
    @post.content = params[:post][:content]
    if @post.save
      redirect_to "/thoughts"
    else
      redirect_to "/posts/new"
    end
  end

end
