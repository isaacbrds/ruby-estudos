Rails.application.routes.draw do
  get 'usuarios/index'
  get 'teste', to: 'welcome#index'
  
  root "welcome#index"

  post "adicionar_produto", to: "welcome#adicionar_produtos"
  get "usuarios",  to: "usuarios#index"
  get "usuarios/cadastro",  to: "usuarios#cadastro"
  post "usuarios/confirmacao",  to: "usuarios#confirmacao"
end
