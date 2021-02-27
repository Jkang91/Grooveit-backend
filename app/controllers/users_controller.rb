class UsersController < ApplicationController
    before_action :authenticate, only: [:show]

    def show
        # user = User.find(params[:id])
        render json: @current_user
    end

    def create
        user = User.create(user_params)
        render json: user
    end

    def update
        user = User.find(params[:id])
        user.update(name: params[:name], username: params[:username])
        render json: user
    end

    private

    def user_params
        params.permit(:username, :name, :password)
    end
end
