Website::Application.routes.draw do

  root :to => "blog#index"

  controller :blog do
    get '/thoughts' => :thoughts
    get '/thoughts/:id' => :thought
    get '/contact' => :contact
    get '/resume' => :resume
    get '/analytics' => :analytics
  end

  resources :users, only: [:new, :create]

  controller :sessions do
    get '/login' => :new, :constraints => { :protocol => "https", :subdomain => "secure" }
    get '/logout' => :destroy, :constraints => { :protocol => "https", :subdomain => "secure" }
  end
  resources :sessions, only: [:create], :constraints => { :protocol => "https", :subdomain => "secure" }

  get "*path", :to => "pages#error_404"
end
