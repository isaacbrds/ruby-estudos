class UserController < ApplicationController
    def show
        user_id = params[:id]
        @user = find_user(user_id)
        render json:{
            user: @user
        }
    end

    def find_user(id)
        {id: id, name: "Usuário #{id}"}
    end
end
