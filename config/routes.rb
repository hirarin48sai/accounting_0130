Rails.application.routes.draw do
  
  devise_for :users
  root to: 'homes#top'
  resources :users, only: [:index, :show, :edit,:update]
  resources :pettys,only:[:index,:show,:new,:edit,:create,:update,:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
