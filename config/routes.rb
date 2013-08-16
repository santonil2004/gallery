Gallery::Application.routes.draw do

  #get '/support', to: "supports#new" #adding routes for custom build controller
  #post '/support', to:"supports#create"

  resources :supports
  
  devise_for :users

  resources :albums do
    resources :photos
  end

  root 'albums#index'

end
