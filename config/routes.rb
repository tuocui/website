Website::Application.routes.draw do

  devise_for :users
  root :to => "blog#index"
  
  controller :blog do
    get '/thoughts' => :thoughts
    get '/thoughts/:id' => :thought
    get '/contact' => :contact
    get '/resume' => :resume
  end

  get "*path", :to => "pages#error_404"
end
