class TacosController < ApplicationController

    before_action :find_taco, only: [:show, :edit, :update, :destroy]

    def index
        if params["vegetarian"] == "true"
            @tacos = Taco.is_vegetarian?(true)
        elsif params["vegetarian"] == "false"
            @tacos = Taco.is_vegetarian?(false)
        else 
            @tacos = Taco.all
        end
    end

    def show
        render :show
    end

    def new
        @taco = Taco.new
        # render :new
    end

    def create
        # name = params[:taco][:name]
        # vegetarian = params[:taco][:vegetarian]
        new_taco = Taco.create(taco_params)

        # cheat_price = params[:taco][:price] + 1
        # new_taco.price = cheat_price
        # new_taco.save

        redirect_to taco_path(new_taco.id) # load "www.myapp.com/tacos/27"
        # redirect_to "/tacos/#{new_taco.id}"
    end

    def edit
    end

    def update
        @taco.update(taco_params)
        redirect_to taco_path(@taco)
    end

    def destroy
        @taco.destroy
        redirect_to tacos_path
    end

    private

    def taco_params
        params.require(:taco).permit(:name, :vegetarian, :price, :restaurant_id, :ingredient_ids => [])
    end

    def find_taco
        @taco = Taco.find(params[:id])
    end

end








