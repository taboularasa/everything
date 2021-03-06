Everything::Application.routes.draw do
  devise_for :users

  root :to => "items#index"

  resources :containers
  resources :users
  resources :items, type: "Item"

  resources :peripherals, controller: "items", type: "Peripheral"
  resources :softwares, controller: "items", type: "Software"
  resources :computers, controller: "items", type: "Computer"
  resources :power_supplies, controller: "items", type: "PowerSupply"
  resources :consumables, controller: "items", type: "Consumable"
  resources :tools, controller: "items", type: "Tool"
  resources :cables, controller: "items", type: "Cable"
  resources :games, controller: "items", type: "Game"
  resources :books, controller: "items", type: "Book"

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

end
