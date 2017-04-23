Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sandwich
  resources :menu, except: [:new, :create, :edit, :update, :destroy]

  root to: 'sandwich#show'
end
