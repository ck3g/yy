Rails.application.routes.draw do

  devise_for :users

  mount Yy::Engine => "/yy"
end
