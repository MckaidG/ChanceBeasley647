Rails.application.routes.draw do
    devise_for :users, path: '', path_names: {sign_in: "login", sign_out: "logout", sign_up: 'register'}

    get 'pages/about'


    get 'pages/contact'

    resources :blogs
    resources :comments

    mount ActionCable.server => '/cable'

    root to: 'blogs#index'
end
