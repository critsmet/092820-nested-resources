Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :kombuchas

  resources :brands, only: [:index, :new, :create, :show] do
    resources :kombuchas, only: [:index, :new, :show, :create]
  end

  # INDEX:
  # get '/kombuchas', to: 'kombuchas#index', as: "kombuchas"
  #
  # SHOW:
  # get '/kombuchas/:id', to: 'kombuchas#show', :as => :kombucha
  #
  # EDIT:
  # get '/kombuchas/:id/edit', to: 'kombuchas#edit', :as => :edit_kombucha

  # '/kombuchas/5/brand' this COULD work, but the pattern is more to start with model that has many of somethingg else:
  # '/brands/2/kombuchas'

end
