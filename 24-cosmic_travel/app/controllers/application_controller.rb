class ApplicationController < ActionController::Base

    def about_page
        @num_scientists = Scientist.count
        @num_planets = Planet.count
        render :about
    end
end
