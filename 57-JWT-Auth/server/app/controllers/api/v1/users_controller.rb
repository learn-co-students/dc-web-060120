class Api::V1::UsersController < ApplicationController

    skip_before_action :logged_in?, only: [:create] #signup
  
    def create
        # byebug
        # user = User.new(username: params[:username], password: params[:password])
        user = User.new(user_params)


        if user.valid?
            user.save
            render json: {user: UserSerializer.new(user), token: encode_token({user_id: user.id})}
        else
            render json: {error: "Failed to create the user"}
        end
    end

    private

    def user_params
        params.permit(:username, :password)
    end
 
end
