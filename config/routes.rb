Everything::Application.routes.draw do
  resources :peripherals


  resources :softwares


  resources :computers


  resources :power_supplies


  resources :consumables


  resources :tools


  resources :cables


  resources :games


  resources :items
  resources :books

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

end
