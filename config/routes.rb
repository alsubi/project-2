Rails.application.routes.draw do
  root to: "home#index" 

  devise_for :users, controllers: { registrations: 'users/registrations',
    sessions: 'users/sessions', unlocks: 'users/unlocks',
    passwords: 'users/passwords', confirmations: 'users/confirmations'}

    resources :stores do
      resources :products
    end

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
