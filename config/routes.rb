Rails.application.routes.draw do
  get 'reviews/new'
  get 'events/index'
  get 'events/show'
  get 'events/new'
  get 'events/edit'
  get 'bookings/new'
  get 'users/show'
  get 'users/new'
  get 'users/edit'
  devise_for :users
  root to: "pages#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
