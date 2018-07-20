Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :patients do
    resources :cards
  end

  resources :cards do
    resources :notes
  end
  resources :doctors

  root to: 'home#index'
end
