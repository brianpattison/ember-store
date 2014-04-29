Rails.application.routes.draw do
  root :to => "variants#index"
  namespace :api do
    resources :variants
  end
end
