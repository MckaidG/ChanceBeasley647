Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {sign_in: "login", sign_out: "logout", sign_up: 'register'}

 get 'pages/about'
  
  get 'pages/home'

  get 'pages/contact'

  resources :blogs  
  
  mount ActionCable.server => '/cable'
  
   match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], :as => :finish_signup 
  root to: 'blogs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
