class FavoritesController < ApplicationController

    def index
      favorites = Favorite.all
      render json: favorites
    end

    def show
      favorite = Favorite.find(params[:id])
      render json: favorite 
    end

    # def stash
    #   user = User.find_by(params[:user_id])
    #   render json: user.stash
    # end

    def create
      favorite = Favorite.create(favorite_params)
      render json: favorite 
    end 

    private 

    def favorite_params 
        params.permit(:user_id, :snack_id,)
    end 

end
