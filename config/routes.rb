Rails.application.routes.draw do
  resources :addresses
  resources :doctors
  resources :users, only: %i[index authenticate destroy] do
    resources :reservations, only: %i[index show create destroy]
  end
end
