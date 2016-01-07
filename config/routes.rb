Rails.application.routes.draw do
  resources :interested_people
  root 'static_pages#home'
  get '/signup', to: 'static_pages#signup'
  get '/contact', to: 'static_pages#contact'
  get '/about', to: 'static_pages#about'
end
