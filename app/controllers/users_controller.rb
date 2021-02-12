class UsersController < ApplicationController

    def index
        users = User.all 
        render json: users 
    end 

    def login
        user = User.first
        render json: user
    end 

    def me
        # checking some identifying info about the request 
        user = User.first
        render json:user
    end 

    def show 
        user = User.find(params[:id])
        render json: user
    end 

    def create
        user = User.create(user_params)
        render json: user 
    end 

    def update
        user = User.first
        user.update(user_params)
        render json: user
    end 

    def delete
        user = User.find(params[:id])
        user.destroy
    end 

    private 

    def user_params 
        params.permit(:name, :age, :lifestyle)
    end 

end
