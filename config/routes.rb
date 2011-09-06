Geekbusters::Application.routes.draw do
  resources :geekbusters, :teams

  match 'search' => 'search#find', :via => [:get, :post], :as => :search

  root :to => 'geekbusters#index'
end
