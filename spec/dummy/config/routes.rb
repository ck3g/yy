Rails.application.routes.draw do

  devise_for :users

  mount Yy::Engine => "/yy"

  root to: "welcome#index"
end
