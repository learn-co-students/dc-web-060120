class ApplicationController < ActionController::Base

    def homepage
        render :homepage
    end

    def about
        # render(:about)
    end

    def hello
        @cat_name = params[:name]
        @great_things_about_cats = ["They're fluffy", "They're cute", "They snuggle"]
        render :hello
    end

    def index
        @tacos = Taco.all
        # render :index
    end

    def show
        id = params[:id]
        @taco = Taco.find(id)
        render :show
    end
end
