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
        @taco = Taco.new(taco_params)
        if @taco.valid?
            @taco.save
            redirect_to taco_path(@taco.id) # load "www.myapp.com/tacos/27"
        else
            render :new
        end
        # redirect_to "/tacos/#{new_taco.id}"
    end

    def edit
    end

    def update
        @taco.update(taco_params)
        if @taco.valid?
            redirect_to taco_path(@taco.id)
        else
            render :edit
        end
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








