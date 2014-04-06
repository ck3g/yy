Yy::Engine.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :topics, only: [:index]
  end

  root to: 'topics#index'
end
