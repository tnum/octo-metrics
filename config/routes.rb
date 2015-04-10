Rails.application.routes.draw do

  resources :sites
  
  root to: 'sites#index'

   namespace :api, defaults: { format: :json } do
     resources :events, only: [:create]
   end
   
end
