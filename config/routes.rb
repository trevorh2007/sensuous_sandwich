Rails.application.routes.draw do

  get 'menu', to: 'menu#menu'
  get 'about', to: 'menu#about'
  get 'contact', to: 'menu#contact'

  resources :sandwich, except: [:new, :create, :edit, :update, :destroy]
  resources :menu, except: [:new, :create, :edit, :update, :destroy]

  root to: 'sandwich#show'
end
