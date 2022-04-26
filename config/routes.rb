Rails.application.routes.draw do
  devise_for :users
  resources :pessoajuridicas
  resources :pessoafisicas
  resources :estoques
  resources :tipoprodutos
  resources :produtos

  #rota index
  root to: 'produtos#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #csv

  #produtos
  resources :produtos do
    collection { post :import }
  end
end
