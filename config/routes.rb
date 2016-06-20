Website::Application.routes.draw do

  root :to => "blog#index"

  controller :blog do
    get '/thoughts' => :thoughts
    get '/thoughts/:id' => :thought
    get '/contact' => :contact
    get '/resume' => :resume
    get '/analytics' => :analytics
  end

  resources :users, only: [:new, :create], :requirements => { :protocol => "https", :subdomain => "secure" }

  controller :sessions do
    get '/login' => :new, :requirements => { :protocol => "https", :subdomain => "secure" }
    get '/logout' => :destroy, :requirements => { :protocol => "https", :subdomain => "secure" }
  end
  resources :sessions, only: [:create], :requirements => { :protocol => "https", :subdomain => "secure" }

  get "*path", :to => "pages#error_404"
end
