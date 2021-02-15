class UsersController < ApplicationController
    def create
        session = User.find_by(user: session_params[:user], password: session_params[:password])

        unless session
            render json: { errors: 'No fue posible' }, status: 406
        else
            render json: { user: session }, status: 200
        end
    end 

    private

    def session_params
        params.require(:session).permit(:user, :password)
    end
end
