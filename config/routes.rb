Rails.application.routes.draw do
  devise_for :users
  resources :pessoajuridicas
  resources :pessoafisicas
  resources :estoques
  resources :tipoprodutos
  resources :produtos
  resources :index

  #rota index
  #root to: 'produtos#index'
  root to: 'index#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #csv import
  #planilha produtos
  resources :produtos do
    collection { post :import }
  end

  #planilha tipo de produtos
  resources :tipoprodutos do
    collection { post :import }
  end


  #planilha estoque
  resources :estoques do
    collection { post :import }
  end


  #planilha pessoas fisica
  resources :pessoafisicas do
    collection { post :import }
  end

  #planilha pessoa juridica
  resources :pessoajuridicas do
    collection { post :import }
  end

end
