Rails.application.routes.draw do
  #get 'static_pages/home'
  root to: 'static_pages#home'
    get '/about' , to: "static_pages#about"
    resources :contacts, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
