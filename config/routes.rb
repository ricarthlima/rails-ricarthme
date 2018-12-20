Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "welcome#index"
  get "magnero" => "magnero#index"
  get "justa" => "justa#index"
  get "live" => "live#index"
end
