Rails.application.routes.draw do
  devise_for :users

  root to: "events#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :events do
    resources :bookings, only: [ :new, :create, :show ]
  end
  resources :bookings, only: [ :edit, :update, :destroy]

end
