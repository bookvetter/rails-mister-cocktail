Rails.application.routes.draw do

  root 'cocktails#home'
  get 'ingredients/dogpaw'
  get 'ingredients/snaketongue'
   resources :cocktails do
    resources :doses

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
end
