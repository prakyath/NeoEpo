Rails.application.routes.draw do
 
 resources :requests
resources :asks

 mount Spree::Core::Engine, :at => '/'
Spree::Core::Engine.routes.draw do
   resources :asks
end

get '*id', :to => 'spree/taxons#show', :as => :categories
end
