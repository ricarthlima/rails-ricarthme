Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "pessoal#index"
  
  # Rotas para páginas de pessoal
  get "oqfev" => "pessoal#vivi"
  get "livros" => "pessoal#personal_books"
  get "desafios" => "pessoal#desafios"

  # Rotas /c/ para currículos
  get "profissional" => "profissional#index"
  get "profissional/:empresa" => "profissional#index"

end