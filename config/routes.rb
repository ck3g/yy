Yy::Engine.routes.draw do
  resources :topics, only: [:index]

  root to: 'topics#index'
end
