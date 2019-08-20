Rails.application.routes.draw do
  root  'home#index'
  resources :blogs, only: [:index, :show]

end
