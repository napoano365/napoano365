Rails.application.routes.draw do
  root  'home#index'
  get 'about', to: 'home#about'
  #get 'user/edit/:id' to: 'user#edit'
  resources :blogs, only: [:index, :show]
  resources :contacts, only: [:new]

end
