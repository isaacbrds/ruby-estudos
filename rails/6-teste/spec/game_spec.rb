# Describe - Usado para descrever um grupo de exemplos de teste
# Context - O contexto do caso de teste
# It - Usado para definir um exemplo de teste específico
# Expect - iniciar uma expectativa sobre um determinado objeto ou valor.
# Eq -  usado para verificar se dois valores são iguais
require 'models/game'

RSpec.describe 'Game' do
  before(:each) do
    @game = Game.new('Spider-Man: Miles Morales', 2020, ['Open-World', 'Action-Packed'])
  end
  context 'when dealing with PS5 games' do
    it 'should have a title' do 
        # expect(@game.title).to eq('Spider-Man: Miles Morales')
        expect(@game.title).to be_truthy
        #Verifica se uma condição é verdadeira ou falsa
    end
    it 'should allow settings and updating the title' do
        @game.title = 'Demon\'s Souls'
        expect(@game.title).to eq('Demon\'s Souls')
        @game.title = 'Ratchet & Clank Rift Apart'
        expect(@game.title).to eq('Ratchet & Clank Rift Apart')
    end

    it 'should have a release year within a specif range' do
        #Verifica se um valor está dentro de um intervalo específico
        expect(@game.release_year).to be_within(1).of(2020)
    end

    it 'should include specific features' do
        expect(@game.features).to include('Open-World')
        expect(@game.features).to include('Action-Packed')
        #Verifica se um objeto inclui de um determinado elemento
    end
  end
  context 'roly-playing games (RPG)' do
    before(:each) do
      @rpg_game = Game.new('Demon\'s Souls', 2020, ['RPG', 'Action'])
    end
    
    it 'should have a title' do
        expect(@rpg_game.title).to be_truthy
    end

    it 'should have a release year within a specif range' do
        #Verifica se um valor está dentro de um intervalo específico
        expect(@rpg_game.release_year).to be_within(1).of(2020)
    end

    it 'should include specific features' do
        expect(@rpg_game.features).to include('RPG')
        expect(@rpg_game.features).to include('Action')
        #Verifica se um objeto inclui de um determinado elemento
    end
  end
end  