Rails.application.routes.draw do

  devise_for :users, path: '', path_names: {sign_in: "login", sign_out: "logout", sign_up: 'register'}
  resources :portfolios, except: [:show] do 
    put :sort, on: :collection
  end
 get 'pages/about'
  
  get 'pages/home'

  get 'pages/contact'

  resources :blogs

  root to: 'blogs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
