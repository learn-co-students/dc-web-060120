class ApplicationController < ActionController::Base

    helper_method :current_user # call this in a view

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

    def current_user
        @current_user = User.find(session[:user_id])
    end


end
