Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :bookings, only:[:new, :create, :show, :edit, :update] do
    member do
      get 'traveller' , to:"bookings#traveller"
    end
  end



  get "/mysurprise", to: "dashboard#surprise", as: "my_surprise"



end
