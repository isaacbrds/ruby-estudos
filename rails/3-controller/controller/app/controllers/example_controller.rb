class ExampleController < ApplicationController
    before_action :start_time, only: :tempo
    after_action :stop_time, only: :tempo

    def tempo
        sleep(2)
        render plain: "Ação concluida"
    end
    private

    def start_time
        @start_time = Time.now
        puts "Tempo de inicio: #{@start_time}"
    end

    def stop_time
        @stop_time = Time.now
        @tempo_passado = @stop_time - @start_time
        puts "Tempo de execução: #{@tempo_passado}"
    end
end
