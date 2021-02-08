Rails.application.routes.draw do

  get '/static_pages/contact', to: 'static_pages#contact'
  get '/static_pages/team', to: 'static_pages#team'
  get "/welcome/:name", to: "dynamic#userwelcome"
  get '/static_pages/home', to: 'index#index'
  #get "/author/:name", to: "dynamic#author"
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
