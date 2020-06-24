class TacosController < ApplicationController


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
        id = params[:id]
        @taco = Taco.find(id)
        render :show
    end

    def new
        @taco = Taco.new
        # render :new
    end

    def create
        # name = params[:taco][:name]
        # vegetarian = params[:taco][:vegetarian]
        # price = params[:taco][:price]
        new_taco = Taco.create(taco_params)
        redirect_to taco_path(new_taco.id) # load "www.myapp.com/tacos/27"
        # redirect_to "/tacos/#{new_taco.id}"
    end

    private

    def taco_params
        params.require(:taco).permit(:name, :price, :vegetarian)
    end

end
