Website::Application.routes.draw do

  root :to => "blog#index"

  controller :blog do
    get '/thoughts' => :thoughts
    get '/thoughts/:id' => :thought
    get '/contact' => :contact
    get '/resume' => :resume
    get '/analytics' => :analytics
  end

  get "*path", :to => "pages#error_404"
end
