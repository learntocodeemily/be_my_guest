Rails.application.routes.draw do
  devise_for :users

  resources :users
  root to: "events#index"
  get '/tagged', to: "events#tagged", as: :tagged
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :events do
    resources :bookings, only: [ :new, :create] do
    end

  end
  resources :bookings, only: [ :index, :edit, :update, :destroy] do
    resources :reviews, only: [ :new, :create]
  end
  resources :reviews, only: [ :index, :edit, :update, :destroy]
end
