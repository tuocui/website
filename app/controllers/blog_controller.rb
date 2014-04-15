include BlogHelper

class BlogController < ApplicationController
  def index
  	set_active("welcome")
    render 'index'
  end

  def thoughts
  	set_active("thoughts")
  	render 'thoughts'
  end

  def thought
    id = params[:id].to_i
    @post = Post.find_by_id(id)
    render 'thoughts'
    #@comments = @post.comments
  end

  def contact
  	set_active("contact")
  	render 'contact'
  end

  def resume
    set_active("welcome")
    render 'resume', :layout => "no_header"
  end
end
