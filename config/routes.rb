Rails.application.routes.draw do
  resources :interested_people
  root 'static_pages#home'
  get '/signup', to: 'interested_people#new'
  get '/contact', to: 'static_pages#contact'
  get '/about', to: 'static_pages#about'
end
