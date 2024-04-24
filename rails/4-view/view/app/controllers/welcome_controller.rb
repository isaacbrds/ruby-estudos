class WelcomeController < ApplicationController
  before_action :initialize_produtos, only: [:index]
  def index
    
  end

  def adicionar_produtos
    produto = {
      nome: params[:nome], preco: params[:preco].to_f
    }

    session[:produtos] << produto
    redirect_to root_path
  end

  private

  def initialize_produtos
    session[:produtos] ||= []
    @produtos = session[:produtos]
  end
end
