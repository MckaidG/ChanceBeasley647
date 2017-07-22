Rails.application.routes.draw do
    devise_for :users, path: '', path_names: {sign_in: "login", sign_out: "logout", sign_up: 'register'}

    get 'pages/about'
    resources :blogs, :path => 'updates' do
        resources :comments
    end

    get 'pages/contact'

    get ':id', to: 'blogs#show'

    mount ActionCable.server => '/cable'

    root to: 'blogs#index'
end
