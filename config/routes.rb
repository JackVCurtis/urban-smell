Rails.application.routes.draw do
  resources :smells
  root "smells#index"
end
