Rails.application.routes.draw do
  resources :feedings, except: [:destroy, :update]
end
