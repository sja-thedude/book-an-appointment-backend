Rails.application.routes.draw do
  # devise_for :users, defaults: { format: :json },
  #            controllers: {
  #                sessions: 'users/sessions',
  #                registrations: 'users/registrations'
  #            }
  # get '/member-data', to: 'members#show'


  
  resources :addresses
  resources :doctors
  resources :users, only: %i[index authenticate destroy] do
    resources :reservations, only: %i[index show create destroy]
  end
  # Defines the root path route ("/")
  # root "doctors#index"
end
