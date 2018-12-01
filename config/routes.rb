Rails.application.routes.draw do
  get 'bookings/create' => 'bookings#create_booking'
  get 'bookings/delete'
  get 'bookings/index'
  get 'shows/show'
  get 'seats/show'
  get 'update_seat' => 'seats#update_seat'
  get 'halls/show'
  get 'movies/show'
  get 'homes/home'
  get 'homes/show'
  get 'homes/bootexample'
  devise_for :users, controllers: { registrations: 'users/registrations' }
  authenticated :user do
    root :to => 'homes#home', as: :authenticated_root
  end
  root :to => 'homes#index'
end
