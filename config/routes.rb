Rails.application.routes.draw do
  resources :barks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'barks#index'
end
