Rails.application.routes.draw do
 #Api definition
 namespace :api, defaults: {format: :json}  do 
  namespace :v1 do 
   resources :orders, only: [:index, :show, :create]
   resources :users, only: %i[show create update destroy]
   resources :tokens, only: [:create]
   resources :products
  end
 end
end
