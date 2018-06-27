Rails.application.routes.draw do
  get 'pages/account'

  get 'pages/finance'

  get 'pages/review'

  resources :students
  root to: 'students#new'
end
