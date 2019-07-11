Rails.application.routes.draw do
  root 'welcome#index'
  resources :recipes
  resources :articles
 
end
