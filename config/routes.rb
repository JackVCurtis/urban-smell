Rails.application.routes.draw do
  resources :smells do
    resources :downvotes, except: :update
  end

  root "smells#index"
end
