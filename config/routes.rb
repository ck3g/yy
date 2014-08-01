Yy::Engine.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :topics, only: [:index, :show, :create] do
      resources :comments, shallow: true
    end
    resources :categories, only: [:index]
  end

  root to: 'welcome#index'
end
