class ApplicationController < ActionController::Base

    def homepage
        puts ("we have called on the homepage")
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
end
