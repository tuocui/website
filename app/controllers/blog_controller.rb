include BlogHelper

class BlogController < ApplicationController
  def index
  	set_active("welcome")
    render 'index'
  end

  def about
  	set_active("about")
  	render 'about'
  end

  def thoughts
  	set_active("thoughts")
  	render 'thoughts'
  end

  def contact
  	set_active("contact")
  	render 'contact'
  end
end
