Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "pessoal#index"

  # Rotas /c/ para currículos
  get "c" => "profissional#index"
  get "c/:empresa" => "profissional#index"

end
