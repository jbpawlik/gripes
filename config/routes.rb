Rails.application.routes.draw do
  
  root to: 'interfaces#index'
  
  resources :interfaces
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
