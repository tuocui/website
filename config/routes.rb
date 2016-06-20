Website::Application.routes.draw do

  root :to => "blog#index"

  controller :blog do
    get '/thoughts' => :thoughts
    get '/thoughts/:id' => :thought
    get '/contact' => :contact
    get '/resume' => :resume
    get '/analytics' => :analytics
  end

  controller :users do
    get '/signup' => :new
  end
  resources :users, only: [:create]

  controller :sessions do
    get '/login' => :new
    get '/logout' => :destroy
  end
  resources :sessions, only: [:create]

  get "*path", :to => "pages#error_404"
end
