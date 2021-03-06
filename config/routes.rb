Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    authenticated :user do
      root 'goals#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :goals do
    get '/levelup', to: 'goals#levelup'
    post '/levelup', to: 'goals#levelup'
  end

  get '/stats', to: 'pages#stats'
end
