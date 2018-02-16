Rails.application.routes.draw do
  get 'welcome/about'

  resources :locations
  resources :monsters
  resources :schools
  resources :witchers

  root 'welcome#about'
end
