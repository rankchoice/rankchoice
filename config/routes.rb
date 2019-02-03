Rails.application.routes.draw do
  root to: 'pages#home'
  get '/about', to: 'pages#about'
  resources :votes
  resources :elections do
    member do
      get 'result'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
