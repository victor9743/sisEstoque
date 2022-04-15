Rails.application.routes.draw do
  resources :pessoajuridicas
  resources :pessoafisicas
  resources :estoques
  resources :tipoprodutos
  resources :produtos

  #rota index
  root to: 'produtos#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
