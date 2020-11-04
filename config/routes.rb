Rails.application.routes.draw do
  resources :events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, only: [:new, :create, :show]
  resources :session, only: [:new, :create]
  resources :user_invitation, only: [:create]
  resources :attend_event, only: [:create]  

end
