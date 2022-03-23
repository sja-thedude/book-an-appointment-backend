Rails.application.routes.draw do
  devise_for :users, defaults: { format: :json },
             controllers: {
                 sessions: 'users/sessions',
                 registrations: 'users/registrations'
             }
  # get '/member-data', to: 'members#show'

  
  resources :addresses
  resources :doctors
  resources :users do
    resources :reservations
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
