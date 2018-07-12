Rails.application.routes.draw do
  get 'pages/account'

  get 'pages/finance'

  get 'pages/review'

  get 'pages/contract_agreement'

  resources :students, :courses
  root to: 'students#new'
end
