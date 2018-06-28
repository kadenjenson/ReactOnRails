Rails.application.routes.draw do
  get 'pages/account'

  get 'pages/finance'

  get 'pages/review'

  get 'pages/contract_agreement'

  resources :students
  resources :contracts
  root to: 'students#new'
end
