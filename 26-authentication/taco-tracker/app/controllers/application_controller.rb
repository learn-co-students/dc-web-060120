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
        @current_user = User.find_by(id: session[:user_id])
    end

    def logged_in?
        # if current_user
        #     return true
        # else
        #     return false
        # end
        !!current_user
    end

    def authorized
        redirect_to login_path unless logged_in?
        # if !logged_in?
        #     redirect_to login_path
        # end
    end



end
