Rails.application.routes.draw do
  resources :contracts
  root to: 'contracts#landing'
end
