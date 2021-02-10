class SnacksController < ApplicationController

    def index
      snacks = Snack.all
      render json: snacks
    end

    def show
      snack = Snack.find(params[:id])
      render json: snacks
    end

end
