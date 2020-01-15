Rails.application.routes.draw do
  resources :chickens, only: [:index, :show]
  resources :abductions, only: [:index, :show, :create, :new]
  resources :aliens
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
