Rails.application.routes.draw do
  root 'home#index'
  get 'home/estacion'
  get 'home/estaciones'
  get 'home/municipios'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
