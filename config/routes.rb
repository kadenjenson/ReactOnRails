Rails.application.routes.draw do
  resources :students
  resources :contracts
  root to: 'students#new'
end
