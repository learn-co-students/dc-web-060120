class SessionsController < ApplicationController

    def login

    end

    def process_login
        # get the userrname from the form
        username = params[:username]
        # see if that username matches a user in our database
        user = User.find_by(username: username)
        if user 
            # log in that user
            session[:user_id] = user.id
            flash[:message] = "User logged in"
            redirect_to tacos_path
        else 
            flash.now[:error] = "No user found with that name"
            # FLASH: if you redirect
            # FLASH.NOW if you render
            render :login
        end
    end

    def logout
        session.clear
        redirect_to login_path
    end

end
