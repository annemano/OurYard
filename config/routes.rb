Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :listings do
    resources :bookings, only: [:create, :edit, :update]
  end
  resources :bookings, only: [:index, :show, :destroy]
  get '/my_listings', to: 'listings#my_listings', as: 'my_listings'
  patch '/bookings/:id/confirm', to: 'bookings#confirm', as: 'booking_confirm'
  patch '/bookings/:id/reject', to: 'bookings#reject', as: 'booking_reject'
end
