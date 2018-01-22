Rails.application.routes.draw do

  get 'foods/get_recipes'
  root 'foods#index'

end
