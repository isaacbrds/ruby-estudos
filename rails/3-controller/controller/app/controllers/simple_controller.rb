class SimpleController < ApplicationController
    def hello
        render json:{
            message: "este é um controller sem view"
        }
    end
end
