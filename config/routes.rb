Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "welcome#index"
  
  # Rotas legado
  get "magnero" => "magnero#index"
  get "justa" => "justa#index"
  get "live" => "live#index"
  
  # Rotas /c/ para currículos
  get "/c/magnero" => "magnero#index"
  get "/c/justa" => "justa#index"
  get "/c/live" => "live#index"
  get "/c/serttel" => "serttel#index"
end
