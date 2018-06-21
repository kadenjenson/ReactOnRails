Rails.application.routes.draw do
  resources :contracts
  root to: 'contracts#index'
end
