Rails.application.routes.draw do
  resources :gifts
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "pessoal#index"
  
  # Rotas para páginas de pessoal
  get "oquefiz" => "pessoal#vivi"
  get "livros" => "pessoal#personal_books"
  get "desafios" => "pessoal#desafios"
  get "wishlist" => "pessoal#wishlist"

  # Rotas /p/ para currículos
  get "profissional" => "profissional#index"
  get "p" => "profissional#index"
  get "profissional/:empresa" => "profissional#index"
  get "p/:empresa" => "profissional#index"
  
  # Rotas para FARA
  get "fara" => "fara#index"
  get "FARA" => "fara#index"
  get "playfara" => "fara#index"

end