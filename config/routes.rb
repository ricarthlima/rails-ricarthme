Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "pessoal#index"

  # Rotas /c/ para currículos
  get "c" => "profissional#index"
  get "/c/magnero" => "profissional#magnero"
  get "/c/justa" => "profissional#justa"
  get "/c/live" => "profissional#live"
  get "/c/serttel" => "profissional#serttel"
end
