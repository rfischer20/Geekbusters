Geekbusters::Application.routes.draw do
  resources :geekbusters

  root :to => 'geekbusters#index'
end
