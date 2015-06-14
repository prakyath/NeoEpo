Rails.application.routes.draw do
 resources :requests


 mount Spree::Core::Engine, :at => '/'



end
