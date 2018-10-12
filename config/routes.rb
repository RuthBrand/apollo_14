Rails.application.routes.draw do

  resources :astronaut_missions
  resources :astronauts
  resources :missions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
