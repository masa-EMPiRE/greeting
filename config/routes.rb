Rails.application.routes.draw do
  #get 'comments/:time' => 'comments#greet'
  get 'comments/freeword/:word' => 'comments#free'
  get 'comments/random' => 'comments#random'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
