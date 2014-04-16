Yy::Engine.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :topics, only: [:index, :create]
  end

  root to: 'welcome#index'
end
